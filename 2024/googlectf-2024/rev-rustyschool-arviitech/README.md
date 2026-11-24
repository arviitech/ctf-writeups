
# Googlectf24-rustyschool — How the Challenge Was Solved So Quickly

**Result**

```text
CTF{I4m_1nd33d_rUs7y_I_f0rg0t_h0w_t0_d3_1gN_g00d_crypt0_alg0z}
```

The ASCII-art plaintext that spells this flag is reproduced in Appendix E.

**Verification**

```text
Total blocks: 133
Done in 28.38s, ambiguous blocks: 0
Recovered 6359 bytes
```

Every recovered block was re-encrypted with the solver's reimplementation of the target's `encrypt_block` and compared byte-for-byte with the original ciphertext. All 133 blocks matched. The final solver run takes about 28 seconds on this machine.

The short answer to "how so quickly?" is:

> The challenge gave away its structure. The binary was an unstripped Rust ELF with symbols, line information, crate versions, and readable error strings. The ciphertext format was self-describing. Most importantly, each 60-byte ciphertext block leaks a 12-byte key-schedule value, and the key schedule is an invertible quadratic map over GF(2^16). That turns key recovery into algebra, not brute force. The solver never attacked MD5 or SHA-1, never guessed a 96-bit key, and never executed the target.

---

## 1. Why it went fast

| Lever | Evidence | Effect |
|---|---|---|
| Unstripped Rust binary | `rz-bin -I` reports `stripped false`, `linenum true`, `lang rust`; symbols include `blind_rev01::main` and `blind_rev01::key_schedule` | Function identification was mostly free |
| Readable strings | `Rusty School Encryption Tool`, `usage: <filename_to_encrypt>`, `.encrypted`, `79160129948973046149879599747`, `src/main.rs` | Revealed the tool's purpose, file format, and the modulus |
| Crate/version leakage | `num-bigint-0.4.5`, `rand-0.8.5`, `rustc-1.70.0` in `.rodata` | Identified big-integer modular arithmetic and the Rust toolchain |
| Obvious block format | `7980 = 133 × 60`; each block is `48 + 12` bytes | Plaintext block size and leaked value were immediately apparent |
| Leaked `Y` value | Last 12 bytes of every block vary independently of the first 48 bytes | The key state can be recovered from the ciphertext itself |
| Invertible key schedule | Six 16-bit words, quadratic `X`/`Y` maps, reduction constant `0x2B` | 96-bit key search replaced by a small polynomial system |
| Re-encryption oracle | The solver calls the recovered `encrypt_block` on every candidate | False positives are eliminated automatically |
| Printable plaintext | The recovered bytes are ASCII art | The correct candidate among many is trivial to select |

The speed was not the result of skipping verification. It was the result of the artifact being unusually transparent and the cipher having a structural leak. The workflow was a straight line:

```text
triage -> decompile -> identify primitives -> recover format
       -> model algebra -> invert rounds -> verify by re-encryption
```

---

## 2. Timeline reconstructed from the work products

The workspace timestamps tell the story. They are not a session transcript, but they are consistent with the artifacts.

| Time (2026-11-24) | Event | Artifact |
|---|---|---|
| 21:14:49 | Strings, symbols, and imports dumped | `work/strings.txt`, `work/symbols.txt`, `work/imports.txt` |
| 21:15:11 | Project symbols filtered | `work/filtered_symbols.txt` |
| 21:16:21 | Main function disassembled | `work/main_disasm.asm` |
| 21:16:40 | Main function decompiled | `work/main_ghidra.c` |
| 21:17:21 | Helper functions decompiled | `work/helpers_ghidra.c` |
| 21:18:02 | Helper assembly captured | `work/helpers_asm.txt` |
| 21:23:32 | Solver imported/tested (`.pyc` written) | `work/__pycache__/decrypt.cpython-312.pyc` |
| 21:23:55 | Solver finalized | `work/decrypt.py` |
| 21:24:18 | Plaintext recovered | `work/decrypted_payload.bin` |
| 21:35:11 | ASCII-art glyphs split for reading | `work/glyphs.txt` |
| 21:37:13 | Concise algorithm report written | `notes/REPORT.md` |
| 21:39:58 | Independent verification run during this write-up | `work/solver_run.log` |

So the first static-analysis dump to the recovered plaintext was about **9 minutes 29 seconds**. The last 13 minutes were spent reading the ASCII art and writing notes. The solver itself runs in **28 seconds**.

---

## 3. Step-by-step work

### 3.1 Triage: the binary handed over its own map

The first useful command was a metadata check:

```powershell
rz-bin -I target_binary.bin
```

Key output:

```text
arch      x86
bits      64
bintype   elf
class     ELF64
compiler  GCC: (Debian 13.2.0-10) 13.2.0
lang      rust
os        linux
stripped  false
static    false
pie       true
linenum   true
```

The original challenge README described the target as a "compiled static executable"; it is actually an unstripped ELF64 PIE, dynamically linked against glibc. That matters because the symbol table is intact.

Strings immediately exposed the important facts:

```text
Rusty School Encryption Tool
usage:  <filename_to_encrypt>
Loading file to encrypt:
.encrypted
Encryption completed :)
79160129948973046149879599747
src/main.rs
```

The decimal constant is the modulus used by the modular step, and it is about 96 bits:

```text
P = 79160129948973046149879599747
P.bit_length() = 96
```

The symbol table supplied the rest of the vocabulary:

```text
blind_rev01::main::h627750b1eb11ade7
blind_rev01::key_schedule::{{closure}}
md5::compress::soft::compress
sha1::compress::...
num_bigint::biguint::...
rand::rng::Rng::gen_range
```

That is enough to know the target uses MD5, SHA-1, `num-bigint` modular arithmetic, and a home-grown key schedule. No dynamic execution was needed.

A useful decompiler output was `work/main_ghidra.c`. One earlier attempt, `work/main_pdg.c`, is 0 bytes, so the usable decompilation is the rz-ghidra output.

### 3.2 The ciphertext format was self-describing

The encrypted payload is 7,980 bytes:

```text
7980 / 60 = 133 blocks, remainder 0
```

Every block is 60 bytes. Splitting the first block into 12-byte lanes gives:

```text
A = ef1eb69bd633faa27cb14d60
B = 2cec0d4949832d10f39fd8b4
C = 3327ecf52653d47f8bab38c8
D = 901fb0fefdf32bba6ab1fc8e
Y = 32b69127e566d3e133c35cfc
```

The final 12-byte lane varies independently. The decompiled main also confirms a 48-byte allocation padded with `0x01010101` dwords:

```c
puVar8 = alloc(0x30, 1);              // 48-byte block
*(u32 *)(puVar8 + 0x00) = 0x01010101; // 0x01 padding
...
```

So the working hypothesis was:

```text
plaintext block = 48 bytes = A || B || C || D
ciphertext block = 48-byte state || 12-byte leaked Y
```

That hypothesis is correct. The last plaintext block contains exactly **25 bytes of `0x01` padding**, which the solver strips. The recovered plaintext is `133 × 48 − 25 = 6,359` bytes.

### 3.3 Recovering the algorithm

The decompilation and the helper assembly exposed the primitives:

- MD5 and SHA-1 are used only as XOR masks, not as keyed MACs.
- `num-bigint` provides modular exponentiation (`modpow`) and modular inverse.
- A GF(2^16) multiply helper reduces with `0x2B`, i.e. the field polynomial is `0x1002B = x^16 + x^5 + x^3 + x + 1`.
- The main loop runs 12 rounds (`cmp ..., 0x0c`).
- The key state is six 16-bit words, `K[0..5]`.

The recovered block cipher is:

```text
P = 79160129948973046149879599747
GF(2^16) reduction constant = 0x2B

plaintext block -> A, B, C, D  (12 bytes each, little-endian integers)
K = K[0..5]                    (six 16-bit words)

for round = 0 .. 11:
    X[i] = (K[i]   ⊗ K[i+1]) ⊕ K[i+4]
    Y[i] = (K[i+2] ⊗ K[i+3]) ⊕ K[i+5]      (indices mod 6)

    Ax = A ⊕ MD5(X_bytes || C)[:12]
    M  = (A * (D + B) + pow(C, B, P)) mod P
    Bx = B ⊕ SHA1(Y_bytes || C)[:12]

    (A, B, C, D) <- (C, Ax, M, Bx)
    K <- X

output block = C || Ax || M || Bx || Y_bytes
```

Here `⊗` is GF(2^16) multiplication and `⊕` is XOR. `*`, `+`, and `pow` in the `M` line are ordinary integer arithmetic modulo `P`.

The output therefore contains:

```text
C     = previous A
Ax    = previous A masked with MD5(X || C)
M     = modular expression involving A, B, C, D
Bx    = previous B masked with SHA1(Y || C)
Y     = key-schedule output for the final round
```

### 3.4 The key insight: `Y` is a leak, not a salt

The last 12 bytes of each ciphertext block are not random. They satisfy six quadratic equations in the six key-state words:

```text
Y[i] = (W[i+2] ⊗ W[i+3]) ⊕ W[i+5]        (indices mod 6)
```

Given the visible `Y`, the solver can recover the six-word state `W` at the start of the final round. It does not need to search a 96-bit key space.

Once `W` is known, the next state is also known:

```text
X[i] = (W[i] ⊗ W[i+1]) ⊕ W[i+4]
```

That `X` is exactly the value used to compute the final round's MD5 mask. The round can then be undone:

```text
C_prev = C_out
A_prev = Ax  ⊕ MD5(X_bytes || C_prev)[:12]
B_prev = Bx  ⊕ SHA1(Y_bytes || C_prev)[:12]
D_prev = ((M - pow(C_prev, B_prev, P)) * A_prev^(-1) - B_prev) mod P
```

The same process is repeated for all 12 rounds. The only hard part is solving the quadratic system for `W`; everything else is hash recomputation and modular arithmetic.

The helper assembly confirms the GF(2^16) reduction:

```asm
uVar10 = uVar8 ^ 0x2b;
...
uVar9 = uVar7 ^ 0x2b;
```

and the decompiled helper shows the random range call used during setup:

```c
uVar4 = rand::rng::Rng::gen_range(..., 0xff00);
```

The recovered initial state differs from block to block. For example, the printable candidate for block 0 starts with `K0 = [2880, 27688, 49750, 26036, 36011, 20707]`, while block 1 starts with `K0 = [35054, 42770, 558, 47953, 39024, 52122]`. The tool therefore uses an independent per-block state. That does not slow the attack down: each block leaks its own `Y`, so each block can be solved independently.

### 3.5 Building the solver

`work/decrypt.py` is 493 lines of dependency-free Python. It implements only what is necessary:

1. **GF(2^16) arithmetic**: exponent/log tables and inverses, using `0x1002B`.
2. **Polynomial arithmetic over GF(2^16)**: add, multiply, divide, gcd, and root finding.
3. **`solve_Y(Y)`**: recover the six-word state `W` from the leaked `Y`.
4. **`solve_X(X)`**: recover the previous state from the next state.
5. **`inv_round(...)`**: undo one cipher round using MD5, SHA-1, and the modular equation.
6. **`encrypt_block(...)`**: a clean reimplementation of the target's forward encryption, used as an oracle.
7. **Candidate filtering**: keep only candidates that re-encrypt to the exact ciphertext, then choose the printable one.

The algebraic core is the interesting part. `solve_Y` has six quadratic equations in six unknowns. A full symbolic resultant would be expensive, so the solver uses a hybrid numerical/symbolic trick:

- Evaluate the Sylvester resultant at 15 field points `x = 1..15`.
- Interpolate the resulting degree-≤14 univariate polynomial with Lagrange basis polynomials.
- Find its roots by computing `gcd(R(x), x^(2^16) - x)` and splitting with a randomized equal-degree step.
- Substitute each root back, solve the remaining equations, and check all six original equations.

`solve_X` uses the same idea with 13 interpolation points. This avoids expensive polynomial expression swell and keeps the solver fast.

The forward `encrypt_block` is used at the end of each block:

```python
assert encrypt_block(pt, from_u16s(K0)) == blk
```

If the recovered plaintext and state do not reproduce the ciphertext exactly, the candidate is rejected. This is why the solve is trustworthy even though the algebra produces multiple candidates.

Candidate statistics from the full run:

```text
blocks:                 133
total candidates:       1722
maximum per block:      46
printable per block:    1
ambiguous blocks:       0
solver time:            ~28 seconds
```

The average is about 13 candidates per block, but only one per block is printable ASCII. The plaintext is ASCII art, so the printable filter is both natural and decisive.

### 3.6 Verification

The final run is reproducible:

```powershell
cd <challenge-root>
py -3 work\decrypt.py
```

Output:

```text
Total blocks: 133
Done in 28.38s, ambiguous blocks: 0
Recovered 6359 bytes:
...
```

The solver asserts exact re-encryption for every block. In addition:

- The plaintext length is consistent: `133 × 48 − 25 = 6359`.
- The last plaintext block has exactly 25 `0x01` padding bytes.
- The recovered bytes are all printable ASCII plus newlines and spaces.
- The recovered art is coherent and spells a flag.

Artifact hashes from the verified run:

| File | SHA-256 |
|---|---|
| `target_binary.bin` | `949182f8e03f8dd1f32fed90a1ddbf03271c94a1ef086795e11f35b2032c4b15` |
| `encrypted_payload.bin` | `6cb968ed8cf5eb0d270f9278a7a7de10b84bbab5ef10ed2cf8ddb54a5e05c25b` |
| `work/decrypted_payload.bin` | `de60c707baf6bb37ba1e0d9c128ca2bb9a2e3a58e0df3fc27e0640bf97c01d03` |

### 3.7 Reading the flag from the art

The plaintext is not a literal flag. It is 11 lines of 577-column ASCII art, preceded by one blank line, in a large figlet-style font. The art spells the flag.

A column scan finds 47 visual groups, because several adjacent glyphs touch. Important merged groups include:

- `rUs7y`: the `7` has a crossbar and touches the `y`.
- `h0w_t0_d3`: `w`, `_`, and `t` touch; `0`, `_`, and `d` touch.
- `1gN`: the `1` and `g` touch.
- `_g00d`: the underscore touches the following `g`.
- `_crypt0`: the underscore touches the `c`; `r`, `y`, and `p` touch in one group.
- `_alg0z`: the underscore touches the `a`.

Transcribing the groups gives:

```text
CTF{I4m_1nd33d_rUs7y_I_f0rg0t_h0w_t0_d3_1gN_g00d_crypt0_alg0z}
```

The full recovered art is reproduced in Appendix E and stored in `work/decrypted_payload.bin`. The glyph-by-glyph split used for reading is in `work/glyphs.txt`.

---

## 4. What was *not* needed

This is as important as what was needed:

- **No key brute force.** The per-block state is 96 bits. The attack never enumerates it.
- **No MD5 or SHA-1 preimage attack.** Both hashes are used as XOR pads over inputs that become known once `W` is recovered.
- **No dynamic execution or emulation.** Static analysis and reimplementation were sufficient; the target did not need to be run.
- **No network lookups.** Everything came from local artifacts and local tools.
- **No full decompiler cleanup.** Ghidra/rz-ghidra output was messy, but the constants, call graph, and block sizes were enough.
- **No guessing the flag from the art before recovering the plaintext.** The plaintext came first; the art was transcribed afterward.

---

## 5. Why the design is weak

This is a custom cipher built from standard primitives, but the composition is not secure:

1. **The ciphertext leaks a key-schedule intermediate.** `Y` is 12 bytes of the key state's quadratic image. That is enough to recover the state.
2. **The key schedule is invertible algebra.** A quadratic map over a 16-bit field adds no secrecy against an analyst who can solve equations. It is not a one-way function.
3. **The hashes are unkeyed XOR masks.** Once the key state is known, MD5 and SHA-1 masks can be recomputed. They provide no authentication and no resistance to state recovery.
4. **Per-block state does not help.** An independent state per block normally limits damage, but here every block also leaks its own `Y`, so every block is independently attackable.
5. **No integrity check.** The solver can try candidates and re-encrypt; there is no MAC to distinguish a valid plaintext from a wrong candidate. The printable-art property made the correct candidate obvious, but that is not a security property.
6. **The modular step is reversible.** `M = A(D+B) + pow(C, B, P) mod P` can be solved for `D` when `A` is invertible. The code even checks for `A ≡ 0 mod P`.

The right fix is not a stronger home-grown schedule; it is a vetted AEAD construction such as AES-GCM or ChaCha20-Poly1305, with a proper key exchange and a real nonce/IV.

---

## 6. Reproduction

```powershell
cd <challenge-root>
py -3 work\decrypt.py
```

Expected result:

```text
Total blocks: 133
Done in 28.38s, ambiguous blocks: 0
Recovered 6359 bytes
```

The script writes `work/decrypted_payload.bin`. It has no third-party dependencies; it uses only `hashlib`, `random`, and `time` from the standard library.

To re-check the binary metadata with Rizin's `rz-bin` (on `PATH`):

```powershell
rz-bin -I target_binary.bin
```

To inspect the stored static-analysis evidence:

```text
work/strings.txt          readable strings and crate paths
work/symbols.txt          full symbol table
work/filtered_symbols.txt project-relevant symbols
work/imports.txt          dynamic imports
work/main_disasm.asm      main disassembly
work/main_ghidra.c        main decompilation
work/helpers_ghidra.c     helper decompilation
work/helpers_asm.txt      helper assembly
work/decrypt.py           solver
work/decrypted_payload.bin recovered plaintext
```

---

## 7. Corrections applied to the earlier notes

The concise report in `notes/REPORT.md` was correct about the algorithm and the flag. Two metadata details have been corrected there and in the challenge README:

1. The target is an **ELF64 PIE, dynamically linked, unstripped** binary, not a static executable. `rz-bin -I` reports `static false`, `pie true`, `stripped false`, and an interpreter of `/lib64/ld-linux-x86-64.so.2`.
2. The recovered plaintext has **one leading blank line and 11 lines of 577-column art**, not 13 lines of art. The total is still 6,359 bytes.

Neither correction changes the recovered algorithm or the flag.

---

## Appendix A — Forward encryption pseudocode

```text
P = 79160129948973046149879599747
GF_MOD = 0x1002B          # reduction byte 0x2B

encrypt_block(pt48, K0):
    A, B, C, D = pt48[0:12], pt48[12:24], pt48[24:36], pt48[36:48]
    K = six little-endian u16 words from K0

    for round in 0..11:
        X[i] = gf_mul(K[i], K[i+1]) ^ K[i+4]
        Y[i] = gf_mul(K[i+2], K[i+3]) ^ K[i+5]   # i mod 6
        Xb = little-endian bytes of X
        Yb = little-endian bytes of Y

        Ax = A ^ MD5(Xb || C)[:12]
        M  = (int(A) * (int(D) + int(B)) + pow(int(C), int(B), P)) % P
        Bx = B ^ SHA1(Yb || C)[:12]

        A, B, C, D = C, Ax, M, Bx
        K = X

    return C || Ax || M || Bx || Yb
```

## Appendix B — Backward recovery pseudocode

```text
recover_block(block):
    C_out, Ax, M, Bx, Y = block[0:12], block[12:24], block[24:36], block[36:48], block[48:60]

    for W in solve_Y(Y):
        X = [gf_mul(W[i], W[i+1]) ^ W[i+4] for i in range(6)]
        state = inv_round(C_out, Ax, M, Bx, X, Y)
        if state is None: continue

        for round in 10 down to 0:
            for W_prev in solve_X(current_K):
                Y_prev = [gf_mul(W_prev[i+2], W_prev[i+3]) ^ W_prev[i+5] for i in range(6)]
                prev = inv_round(state..., current_K, Y_prev)
                if prev is not None:
                    keep candidate

    for each surviving candidate:
        assert encrypt_block(pt, K0) == block
        keep it
```

## Appendix C — Sample block 0

```text
A = ef1eb69bd633faa27cb14d60
B = 2cec0d4949832d10f39fd8b4
C = 3327ecf52653d47f8bab38c8
D = 901fb0fefdf32bba6ab1fc8e
Y = 32b69127e566d3e133c35cfc

solve_Y(Y) -> 9 candidate states
only one decrypts to printable text:
    K0 = [2880, 27688, 49750, 26036, 36011, 20707]
    pt = b"\n .d8888b. 88888888888 8888888888 .d888 8888888 ..."

encrypt_block(pt, K0) == original block 0   # assertion passes
```

This pattern repeats for all 133 blocks: many algebraic candidates, exactly one printable plaintext, and an exact re-encryption match.

## Appendix D — Files and hashes

```text
target_binary.bin          13,097,704 bytes
encrypted_payload.bin           7,980 bytes
work/decrypted_payload.bin      6,359 bytes
work/decrypt.py                   493 lines
```

```text
SHA-256(target_binary.bin)          = 949182f8e03f8dd1f32fed90a1ddbf03271c94a1ef086795e11f35b2032c4b15
SHA-256(encrypted_payload.bin)      = 6cb968ed8cf5eb0d270f9278a7a7de10b84bbab5ef10ed2cf8ddb54a5e05c25b
SHA-256(work/decrypted_payload.bin) = de60c707baf6bb37ba1e0d9c128ca2bb9a2e3a58e0df3fc27e0640bf97c01d03
```

## Appendix E — Recovered ASCII-art readout

This is the exact plaintext recovered from `encrypted_payload.bin`: one leading blank line followed by 11 lines of 577 columns. The art spells the flag shown above. The solver prints this same art to stdout after its summary line. The code block is 577 columns wide; scroll horizontally to view it.

```text

 .d8888b. 88888888888 8888888888 .d888 8888888             d8888                          d888                 888  .d8888b.   .d8888b.       888                  888     888          8888888888                  8888888           .d888  .d8888b.                   .d8888b.  888             888       .d8888b.                       888     .d8888b.              888  .d8888b.            d888           888b    888                   .d8888b.   .d8888b.       888                       Y88b   d88P        888     .d8888b.                   888           .d8888b.          888b.   
d88P  Y88b    888     888       d88P"    888              d8P888                         d8888                 888 d88P  Y88b d88P  Y88b      888                  888     888                d88P                    888            d88P"  d88P  Y88b                 d88P  Y88b 888             888      d88P  Y88b                      888    d88P  Y88b             888 d88P  Y88b          d8888           8888b   888                  d88P  Y88b d88P  Y88b      888                        Y88b d88P         888    d88P  Y88b                  888          d88P  Y88b          "Y88b  
888    888    888     888       888      888             d8P 888                           888                 888      .d88P      .d88P      888                  888     888               d88P                     888            888    888    888                 888    888 888             888      888    888                      888    888    888             888      .d88P            888           88888b  888                  888    888 888    888      888                         Y88o88P          888    888    888                  888          888    888            888  
888           888     8888888  .888      888            d8P  888  88888b.d88b.             888   88888b.   .d88888     8888"      8888"   .d88888          888d888 888     888 .d8888b      d88P  888  888            888            888888 888    888 888d888 .d88b.  888    888 888888          88888b.  888    888 888  888  888        888888 888    888         .d88888     8888"  88888888   888   .d88b.  888Y88b 888          .d88b.  888    888 888    888  .d88888          .d8888b 888d888 Y888P  88888b.  888888 888    888          8888b.  888  .d88b.  888    888 88888888   888. 
888           888     888      888(      888           d88   888  888 "888 "88b            888   888 "88b d88" 888      "Y8b.      "Y8b. d88" 888          888P"   888     888 88K       88888888 888  888            888            888    888    888 888P"  d88P"88b 888    888 888             888 "88b 888    888 888  888  888        888    888    888        d88" 888      "Y8b.    d88P    888  d88P"88b 888 Y88b888         d88P"88b 888    888 888    888 d88" 888         d88P"    888P"    888   888 "88b 888    888    888             "88b 888 d88P"88b 888    888    d88P    )888 
888    888    888     888      "888      888           8888888888 888  888  888            888   888  888 888  888 888    888 888    888 888  888          888     888     888 "Y8888b.   d88P    888  888            888            888    888    888 888    888  888 888    888 888             888  888 888    888 888  888  888        888    888    888        888  888 888    888   d88P     888  888  888 888  Y88888         888  888 888    888 888    888 888  888         888      888      888   888  888 888    888    888         .d888888 888 888  888 888    888   d88P     888" 
Y88b  d88P    888     888       888      888                 888  888  888  888            888   888  888 Y88b 888 Y88b  d88P Y88b  d88P Y88b 888          888     Y88b. .d88P      X88  d88P     Y88b 888            888            888    Y88b  d88P 888    Y88b 888 Y88b  d88P Y88b.           888  888 Y88b  d88P Y88b 888 d88P        Y88b.  Y88b  d88P        Y88b 888 Y88b  d88P  d88P      888  Y88b 888 888   Y8888         Y88b 888 Y88b  d88P Y88b  d88P Y88b 888         Y88b.    888      888   888 d88P Y88b.  Y88b  d88P         888  888 888 Y88b 888 Y88b  d88P  d88P      888  
 "Y8888P"     888     888       Y88b.  8888888 88888888      888  888  888  888 88888888 8888888 888  888  "Y88888  "Y8888P"   "Y8888P"   "Y88888 88888888 888      "Y88888P"   88888P' d88P       "Y88888 88888888 8888888 88888888 888     "Y8888P"  888     "Y88888  "Y8888P"   "Y888 88888888 888  888  "Y8888P"   "Y8888888P" 88888888 "Y888  "Y8888P" 88888888 "Y88888  "Y8888P"  88888888 8888888 "Y88888 888    Y888 88888888 "Y88888  "Y8888P"   "Y8888P"   "Y88888 88888888 "Y8888P 888      888   88888P"   "Y888  "Y8888P" 88888888 "Y888888 888  "Y88888  "Y8888P"  88888888 .d88P  
                                 "Y888                                                                                                                                                                 888                                                         888                                                                                                                                       888                          888                                                                888                                                  888                    888P"   
                                                                                                                                                                                                  Y8b d88P                                                    Y8b d88P                                                                                                                                  Y8b d88P                     Y8b d88P                                                                888                                             Y8b d88P                            
                                                                                                                                                                                                   "Y88P"                                                      "Y88P"                                                                                                                                    "Y88P"                       "Y88P"                                                                 888                                              "Y88P"                             
```

---

## Bottom line

The challenge was solved quickly because the target exposed its own implementation, and the cipher's output leaked the one value needed to invert its key schedule. The actual attack was:

```text
read the symbols and strings
-> infer 48-byte plaintext blocks + 12-byte leaked Y
-> recover the six-word key state from Y with resultants
-> undo 12 rounds with MD5/SHA-1 recomputation and modular inversion
-> verify with the reimplemented encrypt_block
-> filter the one printable candidate per block
-> transcribe the ASCII art
```

No brute force, no hash preimage, no dynamic execution, and no network access were required. That is why the analysis moved from the first static dump to plaintext in under ten minutes, and why the solver itself finishes all 133 blocks in about 28 seconds.
