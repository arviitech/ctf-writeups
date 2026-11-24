import hashlib
import random
import time

P = 79160129948973046149879599747


def gf_mul_slow(a, b):
    res = 0
    while a and b:
        if b & 1:
            res ^= a
        hi = a & 0x8000
        a = (a << 1) & 0xFFFF
        if hi:
            a ^= 0x2B
        b >>= 1
    return res


def build_gf_tables():
    # Find primitive generator in GF(2^16) mod 0x1002b
    for g in range(2, 65536):
        # 65535 = 3 * 5 * 17 * 257
        ok = True
        for f in (3, 5, 17, 257):
            e = 65535 // f
            r, base = 1, g
            while e:
                if e & 1:
                    r = gf_mul_slow(r, base)
                base = gf_mul_slow(base, base)
                e >>= 1
            if r == 1:
                ok = False
                break
        if ok:
            exp = [0] * 131072
            log = [0] * 65536
            cur = 1
            for i in range(65535):
                exp[i] = cur
                exp[i + 65535] = cur
                log[cur] = i
                cur = gf_mul_slow(cur, g)
            inv = [0] * 65536
            for x in range(1, 65536):
                inv[x] = exp[65535 - log[x]]
            return exp, log, inv
    raise RuntimeError("No generator found")


GF_EXP, GF_LOG, GF_INV = build_gf_tables()


def gf_mul(a, b):
    if a == 0 or b == 0:
        return 0
    return GF_EXP[GF_LOG[a] + GF_LOG[b]]


def p1_trim(p):
    p = list(p)
    while p and p[-1] == 0:
        p.pop()
    return p


def p1_add(a, b):
    n = max(len(a), len(b))
    return p1_trim([(a[i] if i < len(a) else 0) ^ (b[i] if i < len(b) else 0) for i in range(n)])


def p1_mul(a, b):
    if not a or not b:
        return []
    res = [0] * (len(a) + len(b) - 1)
    for i, ai in enumerate(a):
        if ai == 0:
            continue
        lai = GF_LOG[ai]
        for j, bj in enumerate(b):
            if bj:
                res[i + j] ^= GF_EXP[lai + GF_LOG[bj]]
    return p1_trim(res)


def p1_eval(p, x):
    r = 0
    for c in reversed(p):
        r = (GF_EXP[GF_LOG[r] + GF_LOG[x]] if (r and x) else 0) ^ c
    return r


def p1_divmod(a, b):
    a, b = p1_trim(a), p1_trim(b)
    if len(a) < len(b):
        return [], a
    q = [0] * (len(a) - len(b) + 1)
    inv_lb = GF_INV[b[-1]]
    while len(a) >= len(b):
        deg = len(a) - len(b)
        coef = gf_mul(a[-1], inv_lb)
        q[deg] ^= coef
        lcoef = GF_LOG[coef]
        for i, bi in enumerate(b):
            if bi:
                a[deg + i] ^= GF_EXP[GF_LOG[bi] + lcoef]
        a = p1_trim(a)
    return p1_trim(q), a


def p1_gcd(a, b):
    a, b = p1_trim(a), p1_trim(b)
    while b:
        _, r = p1_divmod(a, b)
        a, b = b, r
    if a:
        inv = GF_INV[a[-1]]
        a = [gf_mul(c, inv) for c in a]
    return a


def p1_roots(p):
    p = p1_trim(p)
    if not p or len(p) == 1:
        return []
    roots = []
    if p[0] == 0:
        roots.append(0)
        while p and p[0] == 0:
            p = p[1:]
    if len(p) <= 1:
        return roots
    xp = [0, 1]
    for _ in range(16):
        xp = p1_divmod(p1_mul(xp, xp), p)[1]
    g = p1_gcd(p, p1_add(xp, [0, 1]))
    rng = random.Random(12345)

    def split(f):
        deg = len(f) - 1
        if deg == 0:
            return []
        if deg == 1:
            return [gf_mul(f[0], GF_INV[f[1]])]
        while True:
            c = rng.randrange(1, 65536)
            t = [0]
            cur = [0, c]
            for _ in range(16):
                t = p1_add(t, cur)
                cur = p1_divmod(p1_mul(cur, cur), f)[1]
            h = p1_gcd(f, t)
            if 0 < len(h) - 1 < deg:
                q, _ = p1_divmod(f, h)
                return split(h) + split(q)

    return sorted(set(roots + split(g)))


def p2_add(a, b):
    n = max(len(a), len(b))
    res = [p1_add(a[i] if i < len(a) else [], b[i] if i < len(b) else []) for i in range(n)]
    while res and not res[-1]:
        res.pop()
    return res


def p2_mul(a, b):
    if not a or not b:
        return []
    res = [[] for _ in range(len(a) + len(b) - 1)]
    for i, ai in enumerate(a):
        if not ai:
            continue
        for j, bj in enumerate(b):
            if not bj:
                continue
            res[i + j] = p1_add(res[i + j], p1_mul(ai, bj))
    while res and not res[-1]:
        res.pop()
    return res


def p1_eval_p2(p2, x0):
    return [p1_eval(c, x0) for c in p2]


def sylvester_det(f, g):
    df, dg = len(f) - 1, len(g) - 1
    n = df + dg
    M = [[0] * n for _ in range(n)]
    for r in range(dg):
        for j in range(df + 1):
            M[r][r + j] = f[df - j]
    for r in range(df):
        for j in range(dg + 1):
            M[dg + r][r + j] = g[dg - j]
    det = 1
    for i in range(n):
        piv = -1
        for r in range(i, n):
            if M[r][i] != 0:
                piv = r
                break
        if piv == -1:
            return 0
        if piv != i:
            M[i], M[piv] = M[piv], M[i]
        det = gf_mul(det, M[i][i])
        invp = GF_INV[M[i][i]]
        for r in range(i + 1, n):
            if M[r][i] == 0:
                continue
            fac = gf_mul(M[r][i], invp)
            lfac = GF_LOG[fac]
            for c in range(i, n):
                if M[i][c]:
                    M[r][c] ^= GF_EXP[GF_LOG[M[i][c]] + lfac]
    return det


def precompute_lagrange(pts):
    basis = []
    for i, xi in enumerate(pts):
        num = [1]
        den = 1
        for j, xj in enumerate(pts):
            if i == j:
                continue
            num = p1_mul(num, [xj, 1])
            den = gf_mul(den, xi ^ xj)
        invd = GF_INV[den]
        basis.append([gf_mul(c, invd) for c in num])
    return basis


PTS_Y = list(range(1, 16))
BASIS_Y = precompute_lagrange(PTS_Y)
PTS_X = list(range(1, 14))
BASIS_X = precompute_lagrange(PTS_X)


def interp_fast(basis, vals):
    n = len(basis)
    res = [0] * n
    for b, v in zip(basis, vals):
        if v == 0:
            continue
        lv = GF_LOG[v]
        for k, bk in enumerate(b):
            if bk:
                res[k] ^= GF_EXP[GF_LOG[bk] + lv]
    return p1_trim(res)


def solve_Y(Y):
    y0, y1, y2, y3, y4, y5 = Y
    A1 = [[], [y4], [0, 1]]
    B1 = [[y1 ^ gf_mul(y4, y5), 1], [0, y5]]
    A3 = [[1, y4], [0, 0, 1]]
    B3 = [[y3, y0]]
    E1 = p2_add(p2_mul(A1, B3), p2_mul(A3, B1))
    w3 = [[y4], [0, 1]]
    lhs = p2_mul([[y2], [1]], p2_mul(A3, A3))
    f1 = p2_add(p2_mul([[y5]], A3), p2_mul([[], [1]], B3))
    f2 = p2_add(p2_mul([[y0]], A3), p2_mul(w3, B3))
    E2 = p2_add(lhs, p2_mul(f1, f2))
    d1, d2 = len(E1) - 1, len(E2) - 1
    vals = [
        sylvester_det(
            (p1_eval_p2(E1, x0) + [0] * (d1 + 1))[: d1 + 1],
            (p1_eval_p2(E2, x0) + [0] * (d2 + 1))[: d2 + 1],
        )
        for x0 in PTS_Y
    ]
    R = interp_fast(BASIS_Y, vals)
    x_roots = p1_roots(R)
    if 0 not in x_roots:
        x_roots.append(0)
    sols = []
    for x0 in x_roots:
        e1 = p1_trim(p1_eval_p2(E1, x0))
        e2 = p1_trim(p1_eval_p2(E2, x0))
        g = p1_gcd(e1, e2) if (e1 and e2) else (e1 or e2)
        for y0_r in p1_roots(g):
            w0, w1 = x0, y0_r
            a3 = p1_eval([p1_eval(c, w0) for c in A3], w1)
            b3 = p1_eval([p1_eval(c, w0) for c in B3], w1)
            if a3 != 0:
                w2 = gf_mul(b3, GF_INV[a3])
            else:
                a1 = p1_eval([p1_eval(c, w0) for c in A1], w1)
                b1 = p1_eval([p1_eval(c, w0) for c in B1], w1)
                if a1 == 0:
                    continue
                w2 = gf_mul(b1, GF_INV[a1])
            w3v = y4 ^ gf_mul(w0, w1)
            w4v = y5 ^ gf_mul(w1, w2)
            w5v = y0 ^ gf_mul(w2, w3v)
            W = [w0, w1, w2, w3v, w4v, w5v]
            if [gf_mul(W[(i + 2) % 6], W[(i + 3) % 6]) ^ W[(i + 5) % 6] for i in range(6)] == Y:
                sols.append(W)
    return sols


def solve_X(X):
    x0, x1, x2, x3, x4, x5 = X
    W0, W1 = [[0, 1]], [[], [1]]
    w4 = [[x0], [0, 1]]
    num_w3 = [[x3], [1]]
    num_w5 = p2_add(p2_mul([[x5]], w4), num_w3)
    num_w2 = p2_add(p2_mul([[x4]], W0), num_w5)
    E1 = p2_add(p2_add(p2_mul([[0, x1]], w4), p2_mul(p2_mul(W1, w4), num_w2)), num_w5)
    E2 = p2_add(p2_mul(p2_mul([[x2, 1]], W0), w4), p2_mul(num_w2, num_w3))
    d1, d2 = len(E1) - 1, len(E2) - 1
    vals = [
        sylvester_det(
            (p1_eval_p2(E1, xv) + [0] * (d1 + 1))[: d1 + 1],
            (p1_eval_p2(E2, xv) + [0] * (d2 + 1))[: d2 + 1],
        )
        for xv in PTS_X
    ]
    R = interp_fast(BASIS_X, vals)
    x_roots = p1_roots(R)
    if 0 not in x_roots:
        x_roots.append(0)
    sols = []
    for w0 in x_roots:
        if w0 == 0:
            w4v, w3v = x0, x5
            w1v = x3 ^ gf_mul(w3v, w4v)
            if w1v == 0:
                w5v = x1
                w2v = x4 ^ gf_mul(w4v, w5v)
                W = [0, w1v, w2v, w3v, w4v, w5v]
                if [gf_mul(W[i], W[(i + 1) % 6]) ^ W[(i + 4) % 6] for i in range(6)] == X:
                    sols.append(W)
            elif w3v != 0:
                w2v = gf_mul(x2, GF_INV[w3v])
                w5v = x1 ^ gf_mul(w1v, w2v)
                W = [0, w1v, w2v, w3v, w4v, w5v]
                if [gf_mul(W[i], W[(i + 1) % 6]) ^ W[(i + 4) % 6] for i in range(6)] == X:
                    sols.append(W)
            continue
        e1 = p1_trim(p1_eval_p2(E1, w0))
        e2 = p1_trim(p1_eval_p2(E2, w0))
        g = p1_gcd(e1, e2) if (e1 and e2) else (e1 or e2)
        for w1 in p1_roots(g):
            w4v = x0 ^ gf_mul(w0, w1)
            if w4v == 0:
                if w1 == x3:
                    w2v = x4
                    w5v = x1 ^ gf_mul(w1, w2v)
                    w3v = x5 ^ gf_mul(w5v, w0)
                    W = [w0, w1, w2v, w3v, 0, w5v]
                    if [gf_mul(W[i], W[(i + 1) % 6]) ^ W[(i + 4) % 6] for i in range(6)] == X:
                        sols.append(W)
                continue
            w3v = gf_mul(x3 ^ w1, GF_INV[w4v])
            w5v = gf_mul(x5 ^ w3v, GF_INV[w0])
            w2v = x4 ^ gf_mul(w4v, w5v)
            W = [w0, w1, w2v, w3v, w4v, w5v]
            if [gf_mul(W[i], W[(i + 1) % 6]) ^ W[(i + 4) % 6] for i in range(6)] == X:
                sols.append(W)
    return sols


def to_u16s(b):
    return [int.from_bytes(b[i : i + 2], "little") for i in range(0, 12, 2)]


def from_u16s(w):
    return b"".join(x.to_bytes(2, "little") for x in w)


def inv_round(A_n, B_n, C_n, D_n, X_bytes, Y_bytes):
    C = A_n
    md = hashlib.md5(X_bytes + C).digest()[:12]
    A = bytes(x ^ y for x, y in zip(B_n, md))
    sh = hashlib.sha1(Y_bytes + C).digest()[:12]
    B = bytes(x ^ y for x, y in zip(D_n, sh))
    Ai = int.from_bytes(A, "little")
    Bi = int.from_bytes(B, "little")
    Ci = int.from_bytes(C, "little")
    Mi = int.from_bytes(C_n, "little")
    if Mi >= P or Ai % P == 0:
        return None
    rhs = (Mi - pow(Ci, Bi, P)) % P
    Di = (rhs * pow(Ai, -1, P) - Bi) % P
    D = Di.to_bytes(12, "little")
    return A, B, C, D


def encrypt_block(pt48, K0):
    A, B, C, D = pt48[0:12], pt48[12:24], pt48[24:36], pt48[36:48]
    K = to_u16s(K0)
    for _ in range(12):
        X = [gf_mul(K[i], K[(i + 1) % 6]) ^ K[(i + 4) % 6] for i in range(6)]
        Y = [gf_mul(K[(i + 2) % 6], K[(i + 3) % 6]) ^ K[(i + 5) % 6] for i in range(6)]
        Xb = from_u16s(X)
        Yb = from_u16s(Y)
        Ai = int.from_bytes(A, "little")
        Bi = int.from_bytes(B, "little")
        Ci = int.from_bytes(C, "little")
        Di = int.from_bytes(D, "little")
        assert Di < P
        Ax = bytes(x ^ y for x, y in zip(A, hashlib.md5(Xb + C).digest()[:12]))
        Mi = (Ai * (Di + Bi) + pow(Ci, Bi, P)) % P
        Mb = Mi.to_bytes(12, "little")
        Bx = bytes(x ^ y for x, y in zip(B, hashlib.sha1(Yb + C).digest()[:12]))
        out = C + Ax + Mb + Bx + Yb
        A, B, C, D = C, Ax, Mb, Bx
        K = X
    return out


def is_printable_text(b, allow_pad=False):
    if allow_pad:
        b = b.rstrip(b"\x01")
    return all(32 <= x < 127 or x in (9, 10, 13) for x in b)


def main():
    t0 = time.time()
    with open("encrypted_payload.bin", "rb") as f:
        enc = f.read()
    assert len(enc) % 60 == 0
    n_blks = len(enc) // 60
    print(f"Total blocks: {n_blks}")

    solve_x_cache = {}

    def cached_solve_X(K):
        t = tuple(K)
        if t not in solve_x_cache:
            solve_x_cache[t] = solve_X(K)
        return solve_x_cache[t]

    recovered_blocks = []
    ambiguous = []
    for blk_idx in range(n_blks):
        blk = enc[blk_idx * 60 : (blk_idx + 1) * 60]
        A12, B12, C12, D12, Y11b = blk[0:12], blk[12:24], blk[24:36], blk[36:48], blk[48:60]
        Y11 = to_u16s(Y11b)
        states = []
        for W11 in solve_Y(Y11):
            X11 = [gf_mul(W11[i], W11[(i + 1) % 6]) ^ W11[(i + 4) % 6] for i in range(6)]
            res = inv_round(A12, B12, C12, D12, from_u16s(X11), Y11b)
            if res:
                states.append((W11, res))
        for r in range(10, -1, -1):
            next_states = []
            for K_next, (A, B, C, D) in states:
                X_bytes = from_u16s(K_next)
                for W in cached_solve_X(K_next):
                    Yr = [gf_mul(W[(i + 2) % 6], W[(i + 3) % 6]) ^ W[(i + 5) % 6] for i in range(6)]
                    res = inv_round(A, B, C, D, X_bytes, from_u16s(Yr))
                    if res:
                        next_states.append((W, res))
            states = next_states

        cands = []
        for K0, (A, B, C, D) in states:
            pt = A + B + C + D
            assert encrypt_block(pt, from_u16s(K0)) == blk
            cands.append((pt, K0))

        ascii_cands = [
            (pt, K0) for pt, K0 in cands if is_printable_text(pt, allow_pad=(blk_idx == n_blks - 1))
        ]
        if len(ascii_cands) == 1:
            recovered_blocks.append(ascii_cands[0][0])
        else:
            ambiguous.append((blk_idx, cands, ascii_cands))
            recovered_blocks.append(ascii_cands[0][0] if ascii_cands else cands[0][0])

    print(f"Done in {time.time() - t0:.2f}s, ambiguous blocks: {len(ambiguous)}")
    for idx, cands, ac in ambiguous:
        print(f"Ambiguous blk {idx}: total={len(cands)}, ascii={len(ac)}")
        for pt, _ in cands:
            print("  ", pt)

    full_pt = b"".join(recovered_blocks).rstrip(b"\x01")
    with open("work/decrypted_payload.bin", "wb") as f:
        f.write(full_pt)
    print(f"Recovered {len(full_pt)} bytes:")
    print(full_pt.decode("utf-8", errors="replace"))


if __name__ == "__main__":
    main()
