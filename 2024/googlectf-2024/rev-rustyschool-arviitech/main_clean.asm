            ;-- blind_rev01::main::h627750b1eb11ade7:
            ;-- method.blind_rev01::main.h627750b1eb11ade7:
            0x0000ae70      push  rbp                                  ; blind_rev01::main::h627750b1eb11ade7
            0x0000ae71      push  r15
            0x0000ae73      push  r14
            0x0000ae75      push  r13
            0x0000ae77      push  r12
            0x0000ae79      push  rbx
            0x0000ae7a      sub   rsp, 0x328
            0x0000ae81      lea   rbx, qword [0x000700d0]
            0x0000ae88      mov   qword [rsp+0x40], rbx
            0x0000ae8d      mov   qword [rsp+0x48], 0x01
            0x0000ae96      mov   qword [rsp+0x30], 0x00
            0x0000ae9f      lea   r14, qword str.Rusty_School_Encryption_Tool________usage:___filename_to_encrypt__src_main.rsLoading_file_to_encrypt:__.encryptedCannot_create_fileBuffer_overflow79160129948973046149879599747called__Option::unwrap____on_a__None__valueGot_error:_Cannot_write_to_fileEncryption_completed_: ; 0x5a3e8 ; "🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀\n🦀   Rusty School Encryption Tool   🦀\nusage:"
            0x0000aea6      mov   qword [rsp+0x50], r14
            0x0000aeab      mov   qword [rsp+0x58], 0x00
            0x0000aeb4      lea   r15, qword method.std::io::stdio::_print.h51ef4be672257529 ; 0x21b80 ; "SH\x81\xec\xb0"
            0x0000aebb      lea   rdi, qword [rsp+0x30]
            0x0000aec0      call  r15
            0x0000aec3      lea   rax, qword [0x000700e0]
            0x0000aeca      mov   qword [rsp+0x40], rax
            0x0000aecf      mov   qword [rsp+0x48], 0x01
            0x0000aed8      mov   qword [rsp+0x30], 0x00
            0x0000aee1      mov   qword [rsp+0x50], r14
            0x0000aee6      mov   qword [rsp+0x58], 0x00
            0x0000aeef      lea   rdi, qword [rsp+0x30]
            0x0000aef4      call  r15
            0x0000aef7      mov   qword [rsp+0x40], rbx
            0x0000aefc      mov   qword [rsp+0x48], 0x01
            0x0000af05      mov   qword [rsp+0x30], 0x00
            0x0000af0e      mov   qword [rsp+0x50], r14
            0x0000af13      mov   qword [rsp+0x58], 0x00
            0x0000af1c      lea   rdi, qword [rsp+0x30]
            0x0000af21      call  r15
            0x0000af24      lea   rbx, qword [rsp+0x30]
            0x0000af29      mov   rdi, rbx
            0x0000af2c      call  qword [method.std::env::args.h547f4c8521072b93] ; [0x73f00:8]=0x2cbe0 method.std::env::args.h547f4c8521072b93
            0x0000af32      lea   rdi, qword [rsp+0x2d0]
            0x0000af3a      mov   rsi, rbx
            0x0000af3d      call  method._alloc::vec::Vec_T__as_alloc::vec::spec_from_iter::SpecFromIter_T_I__::from_iter.hc611af6d90b0c570
            0x0000af42      mov   r14, qword [rsp+0x2e0]
            0x0000af4a      cmp   r14, 0x02
        ┌─< 0x0000af4e      jnz   0xd1db
        │   0x0000af54      mov   rax, qword [rsp+0x2d8]
        │   0x0000af5c      add   rax, 0x18
        │   0x0000af60      mov   qword [rsp+0x2e8], rax
        │   0x0000af68      lea   rbx, qword [rsp+0x2e8]
        │   0x0000af70      mov   qword [rsp+0x150], rbx
        │   0x0000af78      lea   r14, qword method.__T_as_core::fmt::Display_::fmt.h486cb501f535ec6d ; 0xde70 ; "H\x89\xf2H\x8b\aH\x8bx\bH\x8bp\U00000010\xff%\xa4`\U00000006"
        │   0x0000af7f      mov   qword [rsp+0x158], r14
        │   0x0000af87      lea   rax, qword [0x00070128]
        │   0x0000af8e      mov   qword [rsp+0x40], rax
        │   0x0000af93      mov   qword [rsp+0x48], 0x02
        │   0x0000af9c      mov   qword [rsp+0x30], 0x00
        │   0x0000afa5      lea   rax, qword [rsp+0x150]
        │   0x0000afad      mov   qword [rsp+0x50], rax
        │   0x0000afb2      mov   qword [rsp+0x58], 0x01
        │   0x0000afbb      lea   rdi, qword [rsp+0x30]
        │   0x0000afc0      call  qword [method.std::io::stdio::_print.h51ef4be672257529] ; [0x73fd8:8]=0x21b80 method.std::io::stdio::_print.h51ef4be672257529
        │   0x0000afc6      mov   r15, qword [rsp+0x2e8]
        │   0x0000afce      lea   rdi, qword [rsp+0x30]
        │   0x0000afd3      call  qword [method.std::fs::File::options.hb0b71eb13b703afb] ; [0x73c28:8]=0x43220 method.std::fs::OpenOptions::new.hce3c5e812f003271
        │   0x0000afd9      lea   rdi, qword [rsp+0x30]
        │   0x0000afde      mov   esi, 0x01
        │   0x0000afe3      call  qword [method.std::fs::OpenOptions::read.hbd63afc78ab37997] ; [0x738e8:8]=0x43240 method.std::fs::OpenOptions::read.hbd63afc78ab37997
        │   0x0000afe9      mov   rdx, qword [r15+0x08]
        │   0x0000afed      mov   rcx, qword [r15+0x10]
        │   0x0000aff1      lea   rdi, qword [rsp+0x150]
        │   0x0000aff9      mov   rsi, rax
        │   0x0000affc      call  qword [method.std::fs::OpenOptions::_open.h26008ed41aad4b97] ; [0x73bb0:8]=0x43280 method.std::fs::OpenOptions::_open.h26008ed41aad4b97
        │   0x0000b002      cmp   dword [rsp+0x150], 0x00
       ┌──< 0x0000b00a      jnz   0xd6ad
       ││   0x0000b010      mov   eax, dword [rsp+0x154]
       ││   0x0000b017      mov   dword [rsp+0x148], eax
       ││   0x0000b01e      mov   qword [rsp+0x1c0], rbx
       ││   0x0000b026      mov   qword [rsp+0x1c8], r14
       ││   0x0000b02e      lea   rax, qword [0x00070160]
       ││   0x0000b035      mov   qword [rsp+0x40], rax
       ││   0x0000b03a      mov   qword [rsp+0x48], 0x02
       ││   0x0000b043      mov   qword [rsp+0x30], 0x00
       ││   0x0000b04c      lea   rax, qword [rsp+0x1c0]
       ││   0x0000b054      mov   qword [rsp+0x50], rax
       ││   0x0000b059      mov   qword [rsp+0x58], 0x01
       ││   0x0000b062      lea   rdi, qword [rsp+0x150]
       ││   0x0000b06a      lea   rsi, qword [rsp+0x30]
       ││   0x0000b06f      call  qword [method.alloc::fmt::format::format_inner.hc86ba2482cd064fe] ; [0x73d40:8]=0x53150 method.alloc::fmt::format::format_inner.hc86ba2482cd064fe
       ││   0x0000b075      movups xmm0, xmmword [rsp+0x150]
       ││   0x0000b07d      movaps xmmword [rsp+0x30], xmm0
       ││   0x0000b082      mov   rax, qword [rsp+0x160]
       ││   0x0000b08a      mov   qword [rsp+0x40], rax
       ││   0x0000b08f      lea   rdi, qword [rsp+0x150]
       ││   0x0000b097      lea   rsi, qword [rsp+0x30]
       ││   0x0000b09c      call  method.std::fs::File::create.h290bb988d52ed0f9
       ││   0x0000b0a1      cmp   dword [rsp+0x150], 0x00
      ┌───< 0x0000b0a9      jnz   0xd6e1
      │││   0x0000b0af      mov   eax, dword [rsp+0x154]
      │││   0x0000b0b6      mov   dword [rsp+0x14c], eax
      │││   0x0000b0bd      call  qword [method._rand::rngs::thread::ThreadRng_as_core::default::Default_::default.h7fcef750cfbe86ba] ; [0x73d50:8]=0x1e3f0 method.rand::rngs::thread::thread_rng.h4d0e416c2c1cab61
      │││   0x0000b0c3      mov   qword [rsp+0x258], rax
      │││   0x0000b0cb      mov   edi, 0x30                            ; '0'
      │││   0x0000b0d0      mov   esi, 0x01
      │││   0x0000b0d5      call  qword [sym.__rust_alloc]             ; [0x73c90:8]=0xf5c0 sym.__rust_alloc
      │││   0x0000b0db      test  rax, rax
     ┌────< 0x0000b0de      jz    0xd1c6
     ││││   0x0000b0e4      lea   r12, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
     ││││   0x0000b0eb      nop   dword [rax+rax*1], eax
    ┌─────> 0x0000b0f0      movaps xmm0, xmmword [segment.LOAD2]       ; [0x5a000:16]=-1 ; "\U00000001\U00000001\U00000001\U00000001\U00000001\U00000001\U00000001\U00000001\U00000001\U00000001\U00000001\U00000001\U000000"
    ╎││││   0x0000b0f7      movups xmmword [rax+0x20], xmm0
    ╎││││   0x0000b0fb      movups xmmword [rax+0x10], xmm0
    ╎││││   0x0000b0ff      movups xmmword [rax], xmm0
    ╎││││   0x0000b102      mov   ecx, 0x30                            ; '0'
    ╎││││   0x0000b107      lea   rdi, qword [rsp+0x30]
    ╎││││   0x0000b10c      lea   rsi, qword [rsp+0x148]
    ╎││││   0x0000b114      mov   qword [rsp+0x228], rax
    ╎││││   0x0000b11c      mov   rdx, rax
    ╎││││   0x0000b11f      call  qword [method._std::fs::File_as_std::io::Read_::read.h4443f150c3f7a506] ; [0x73a18:8]=0x43160 method._std::fs::File_as_std::io::Read_::read.h4443f150c3f7a506
    ╎││││   0x0000b125      cmp   qword [rsp+0x30], 0x00
   ┌──────< 0x0000b12b      jnz   0xd647
   │╎││││   0x0000b131      mov   rax, qword [rsp+0x38]
   │╎││││   0x0000b136      mov   qword [rsp+0x308], rax
   │╎││││   0x0000b13e      mov   rax, qword [rsp+0x228]
   │╎││││   0x0000b146      lea   r15, qword [rax+0x0c]
   │╎││││   0x0000b14a      lea   r13, qword [rax+0x18]
   │╎││││   0x0000b14e      lea   rbp, qword [rax+0x24]
   │╎││││   0x0000b152      mov   qword [rsp+0x320], r15
   │╎││││   0x0000b15a      mov   qword [rsp+0x318], r13
   │╎││││   0x0000b162      mov   qword [rsp+0x310], rbp
  ┌───────> 0x0000b16a      mov   rax, 0xc00000000                     ; 51539607552
  ╎│╎││││   0x0000b174      mov   qword [rsp+0x30], rax
  ╎│╎││││   0x0000b179      lea   rax, qword [rsp+0x258]
  ╎│╎││││   0x0000b181      mov   qword [rsp+0x38], rax
  ╎│╎││││   0x0000b186      lea   rdi, qword [rsp+0x2f0]
  ╎│╎││││   0x0000b18e      lea   rsi, qword [rsp+0x30]
  ╎│╎││││   0x0000b193      call  method._alloc::vec::Vec_T__as_alloc::vec::spec_from_iter::SpecFromIter_T_I__::from_iter.h45d84f4e628a2841
  ╎│╎││││   0x0000b198      mov   rbx, qword [rsp+0x2f8]
  ╎│╎││││   0x0000b1a0      mov   rax, qword [rsp+0x300]
  ╎│╎││││   0x0000b1a8      mov   qword [rsp+0x100], rax
  ╎│╎││││   0x0000b1b0      mov   edi, 0x0c                            ; 0xc
  ╎│╎││││   0x0000b1b5      mov   esi, 0x01
  ╎│╎││││   0x0000b1ba      call  r12
  ╎│╎││││   0x0000b1bd      test  rax, rax
  ────────< 0x0000b1c0      jz    0xd5b1
  ╎│╎││││   0x0000b1c6      mov   rcx, qword [rsp+0x228]
  ╎│╎││││   0x0000b1ce      mov   edx, dword [rcx+0x08]
  ╎│╎││││   0x0000b1d1      mov   dword [rax+0x08], edx
  ╎│╎││││   0x0000b1d4      mov   rcx, qword [rcx]
  ╎│╎││││   0x0000b1d7      mov   qword [rsp+0x110], rax
  ╎│╎││││   0x0000b1df      mov   qword [rax], rcx
  ╎│╎││││   0x0000b1e2      mov   edi, 0x0c                            ; 0xc
  ╎│╎││││   0x0000b1e7      mov   esi, 0x01
  ╎│╎││││   0x0000b1ec      call  r12
  ╎│╎││││   0x0000b1ef      test  rax, rax
  ────────< 0x0000b1f2      jz    0xd5c6
  ╎│╎││││   0x0000b1f8      mov   ecx, dword [r15+0x08]
  ╎│╎││││   0x0000b1fc      mov   dword [rax+0x08], ecx
  ╎│╎││││   0x0000b1ff      mov   rcx, qword [r15]
  ╎│╎││││   0x0000b202      mov   qword [rsp+0x108], rax
  ╎│╎││││   0x0000b20a      mov   qword [rax], rcx
  ╎│╎││││   0x0000b20d      mov   edi, 0x0c                            ; 0xc
  ╎│╎││││   0x0000b212      mov   esi, 0x01
  ╎│╎││││   0x0000b217      call  r12
  ╎│╎││││   0x0000b21a      test  rax, rax
  ────────< 0x0000b21d      jz    0xd5e8
  ╎│╎││││   0x0000b223      mov   ecx, dword [r13+0x08]
  ╎│╎││││   0x0000b227      mov   dword [rax+0x08], ecx
  ╎│╎││││   0x0000b22a      mov   rcx, qword [r13]
  ╎│╎││││   0x0000b22e      mov   qword [rsp+0xf8], rax
  ╎│╎││││   0x0000b236      mov   qword [rax], rcx
  ╎│╎││││   0x0000b239      mov   edi, 0x0c                            ; 0xc
  ╎│╎││││   0x0000b23e      mov   esi, 0x01
  ╎│╎││││   0x0000b243      call  r12
  ╎│╎││││   0x0000b246      test  rax, rax
  ────────< 0x0000b249      jz    0xd607
  ╎│╎││││   0x0000b24f      mov   ecx, dword [rbp+0x08]
  ╎│╎││││   0x0000b252      mov   dword [rax+0x08], ecx
  ╎│╎││││   0x0000b255      mov   rcx, qword [rbp]
  ╎│╎││││   0x0000b259      mov   qword [rsp+0x1b8], rax
  ╎│╎││││   0x0000b261      mov   qword [rax], rcx
  ╎│╎││││   0x0000b264      cmp   qword [rsp+0x100], 0x00
  ────────< 0x0000b26d      jz    0xb2a0
  ────────< 0x0000b26f      js    0xd629
  ╎│╎││││   0x0000b275      mov   esi, 0x01
  ╎│╎││││   0x0000b27a      mov   r14, qword [rsp+0x100]
  ╎│╎││││   0x0000b282      mov   rdi, r14
  ╎│╎││││   0x0000b285      call  r12
  ╎│╎││││   0x0000b288      test  rax, rax
  ────────< 0x0000b28b      jnz   0xb2ad
  ────────< 0x0000b28d      jmp   0xd634
  ╎│╎││││   0x0000b292      nop   word [rax+rax*1], ax
  ────────> 0x0000b2a0      mov   eax, 0x01
  ╎│╎││││   0x0000b2a5      mov   r14, qword [rsp+0x100]
  ────────> 0x0000b2ad      mov   qword [rsp+0xb0], rax
  ╎│╎││││   0x0000b2b5      mov   rdi, rax
  ╎│╎││││   0x0000b2b8      mov   rsi, rbx
  ╎│╎││││   0x0000b2bb      mov   rdx, r14
  ╎│╎││││   0x0000b2be      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000b2c4      mov   qword [rsp+0xb8], 0x00
  ╎│╎││││   0x0000b2d0      mov   qword [rsp+0xc0], 0x01
  ╎│╎││││   0x0000b2dc      mov   qword [rsp+0xc8], 0x00
  ╎│╎││││   0x0000b2e8      xor   r12d, r12d
  ╎│╎││││   0x0000b2eb      mov   eax, 0x0c                            ; 0xc
  ╎│╎││││   0x0000b2f0      mov   qword [rsp+0x138], rax
  ╎│╎││││   0x0000b2f8      mov   qword [rsp], rax
  ╎│╎││││   0x0000b2fc      mov   qword [rsp+0xa8], rax
  ╎│╎││││   0x0000b304      mov   ebp, 0x0c                            ; 0xc
  ╎│╎││││   0x0000b309      mov   qword [rsp+0x140], rax
  ╎│╎││││   0x0000b311      mov   qword [rsp+0x2c8], r14
  ────────< 0x0000b319      jmp   0xb3a4
  ╎│╎││││   0x0000b31e      nop
  ────────> 0x0000b320      mov   qword [rsp+0xf8], r14
  ╎│╎││││   0x0000b328      mov   qword [rsp+0x138], rbx
  ╎│╎││││   0x0000b330      mov   rax, qword [rsp+0x118]
  ╎│╎││││   0x0000b338      mov   qword [rsp+0x108], rax
  ╎│╎││││   0x0000b340      mov   rdi, qword [rsp+0xf0]
  ╎│╎││││   0x0000b348      mov   qword [rsp+0x110], rdi
  ╎│╎││││   0x0000b350      mov   rax, qword [rsp+0x10]
  ╎│╎││││   0x0000b355      mov   qword [rsp+0xa8], rax
  ╎│╎││││   0x0000b35d      mov   rax, qword [rsp+0x08]
  ╎│╎││││   0x0000b362      mov   qword [rsp+0x140], rax
  ╎│╎││││   0x0000b36a      mov   rax, qword [rsp+0xa0]
  ╎│╎││││   0x0000b372      mov   qword [rsp+0x1b8], rax
  ╎│╎││││   0x0000b37a      mov   rsi, qword [rsp+0x230]
  ╎│╎││││   0x0000b382      mov   qword [rsp+0x100], rsi
  ╎│╎││││   0x0000b38a      mov   rax, qword [rsp+0x208]
  ╎│╎││││   0x0000b392      mov   qword [rsp+0xb0], rax
  ╎│╎││││   0x0000b39a      cmp   r12d, 0x0c                           ; 0xc
  ────────< 0x0000b39e      jz    0xd090
  ────────> 0x0000b3a4      mov   rax, qword [rsp]
  ╎│╎││││   0x0000b3a8      mov   qword [rsp+0x08], rax
  ╎│╎││││   0x0000b3ad      mov   qword [rsp+0x18], 0x00
  ╎│╎││││   0x0000b3b6      mov   qword [rsp+0x20], 0x02
  ╎│╎││││   0x0000b3bf      mov   qword [rsp+0x28], 0x00
  ╎│╎││││   0x0000b3c8      mov   r15, qword [rsp+0x2c8]
  ╎│╎││││   0x0000b3d0      cmp   r15, 0x02
  ────────< 0x0000b3d4      jb    0xd367
  ╎│╎││││   0x0000b3da      mov   rax, qword [rsp+0xb0]
  ╎│╎││││   0x0000b3e2      movzx ebx, word [rax]
  ╎│╎││││   0x0000b3e5      lea   r14, qword [rsp+0x18]
  ╎│╎││││   0x0000b3ea      mov   rdi, r14
  ╎│╎││││   0x0000b3ed      xor   esi, esi
  ╎│╎││││   0x0000b3ef      call  method.alloc::raw_vec::RawVec_T_A_::reserve_for_push.h6f33f1815d54163d
  ╎│╎││││   0x0000b3f4      mov   rax, qword [rsp+0x20]
  ╎│╎││││   0x0000b3f9      mov   rcx, qword [rsp+0x28]
  ╎│╎││││   0x0000b3fe      mov   word [rax+rcx*2], bx
  ╎│╎││││   0x0000b402      mov   rsi, qword [rsp+0x28]
  ╎│╎││││   0x0000b407      inc   rsi
  ╎│╎││││   0x0000b40a      mov   qword [rsp+0x28], rsi
  ╎│╎││││   0x0000b40f      cmp   r15, 0x03
  ────────< 0x0000b413      jbe   0xd36e
  ╎│╎││││   0x0000b419      mov   rax, qword [rsp+0xb0]
  ╎│╎││││   0x0000b421      movzx ebx, word [rax+0x02]
  ╎│╎││││   0x0000b425      cmp   rsi, qword [rsp+0x18]
  ────────< 0x0000b42a      jnz   0xb439
  ╎│╎││││   0x0000b42c      mov   rdi, r14
  ╎│╎││││   0x0000b42f      call  method.alloc::raw_vec::RawVec_T_A_::reserve_for_push.h6f33f1815d54163d
  ╎│╎││││   0x0000b434      mov   rsi, qword [rsp+0x28]
  ────────> 0x0000b439      mov   rax, qword [rsp+0x20]
  ╎│╎││││   0x0000b43e      mov   word [rax+rsi*2], bx
  ╎│╎││││   0x0000b442      mov   rsi, qword [rsp+0x28]
  ╎│╎││││   0x0000b447      inc   rsi
  ╎│╎││││   0x0000b44a      mov   qword [rsp+0x28], rsi
  ╎│╎││││   0x0000b44f      cmp   r15, 0x06
  ────────< 0x0000b453      jb    0xd375
  ╎│╎││││   0x0000b459      mov   rax, qword [rsp+0xb0]
  ╎│╎││││   0x0000b461      movzx ebx, word [rax+0x04]
  ╎│╎││││   0x0000b465      cmp   rsi, qword [rsp+0x18]
  ────────< 0x0000b46a      jnz   0xb479
  ╎│╎││││   0x0000b46c      mov   rdi, r14
  ╎│╎││││   0x0000b46f      call  method.alloc::raw_vec::RawVec_T_A_::reserve_for_push.h6f33f1815d54163d
  ╎│╎││││   0x0000b474      mov   rsi, qword [rsp+0x28]
  ────────> 0x0000b479      mov   rax, qword [rsp+0x20]
  ╎│╎││││   0x0000b47e      mov   word [rax+rsi*2], bx
  ╎│╎││││   0x0000b482      mov   rsi, qword [rsp+0x28]
  ╎│╎││││   0x0000b487      inc   rsi
  ╎│╎││││   0x0000b48a      mov   qword [rsp+0x28], rsi
  ╎│╎││││   0x0000b48f      cmp   r15, 0x08
  ────────< 0x0000b493      jb    0xd37c
  ╎│╎││││   0x0000b499      mov   rax, qword [rsp+0xb0]
  ╎│╎││││   0x0000b4a1      movzx ebx, word [rax+0x06]
  ╎│╎││││   0x0000b4a5      cmp   rsi, qword [rsp+0x18]
  ────────< 0x0000b4aa      jnz   0xb4b9
  ╎│╎││││   0x0000b4ac      mov   rdi, r14
  ╎│╎││││   0x0000b4af      call  method.alloc::raw_vec::RawVec_T_A_::reserve_for_push.h6f33f1815d54163d
  ╎│╎││││   0x0000b4b4      mov   rsi, qword [rsp+0x28]
  ────────> 0x0000b4b9      mov   rax, qword [rsp+0x20]
  ╎│╎││││   0x0000b4be      mov   word [rax+rsi*2], bx
  ╎│╎││││   0x0000b4c2      mov   rsi, qword [rsp+0x28]
  ╎│╎││││   0x0000b4c7      inc   rsi
  ╎│╎││││   0x0000b4ca      mov   qword [rsp+0x28], rsi
  ╎│╎││││   0x0000b4cf      cmp   r15, 0x0a                            ; 0xa
  ────────< 0x0000b4d3      jb    0xd383
  ╎│╎││││   0x0000b4d9      mov   rax, qword [rsp+0xb0]
  ╎│╎││││   0x0000b4e1      movzx ebx, word [rax+0x08]
  ╎│╎││││   0x0000b4e5      cmp   rsi, qword [rsp+0x18]
  ────────< 0x0000b4ea      jnz   0xb4f9
  ╎│╎││││   0x0000b4ec      mov   rdi, r14
  ╎│╎││││   0x0000b4ef      call  method.alloc::raw_vec::RawVec_T_A_::reserve_for_push.h6f33f1815d54163d
  ╎│╎││││   0x0000b4f4      mov   rsi, qword [rsp+0x28]
  ────────> 0x0000b4f9      mov   rax, qword [rsp+0x20]
  ╎│╎││││   0x0000b4fe      mov   word [rax+rsi*2], bx
  ╎│╎││││   0x0000b502      mov   rsi, qword [rsp+0x28]
  ╎│╎││││   0x0000b507      inc   rsi
  ╎│╎││││   0x0000b50a      mov   qword [rsp+0x28], rsi
  ╎│╎││││   0x0000b50f      cmp   r15, 0x0c                            ; 0xc
  ────────< 0x0000b513      jb    0xd38a
  ╎│╎││││   0x0000b519      mov   rax, qword [rsp+0xb0]
  ╎│╎││││   0x0000b521      movzx ebx, word [rax+0x0a]
  ╎│╎││││   0x0000b525      cmp   rsi, qword [rsp+0x18]
  ────────< 0x0000b52a      jnz   0xb539
  ╎│╎││││   0x0000b52c      mov   rdi, r14
  ╎│╎││││   0x0000b52f      call  method.alloc::raw_vec::RawVec_T_A_::reserve_for_push.h6f33f1815d54163d
  ╎│╎││││   0x0000b534      mov   rsi, qword [rsp+0x28]
  ────────> 0x0000b539      mov   rax, qword [rsp+0x20]
  ╎│╎││││   0x0000b53e      mov   word [rax+rsi*2], bx
  ╎│╎││││   0x0000b542      inc   qword [rsp+0x28]
  ╎│╎││││   0x0000b547      mov   qword [rsp+0x30], 0x00
  ╎│╎││││   0x0000b550      mov   qword [rsp+0x38], 0x06
  ╎│╎││││   0x0000b559      mov   qword [rsp+0x40], r14
  ╎│╎││││   0x0000b55e      lea   rdi, qword [rsp+0xd0]
  ╎│╎││││   0x0000b566      lea   rbx, qword [rsp+0x30]
  ╎│╎││││   0x0000b56b      mov   rsi, rbx
  ╎│╎││││   0x0000b56e      call  method._alloc::vec::Vec_T__as_alloc::vec::spec_from_iter::SpecFromIter_T_I__::from_iter.hc8bb4e19c036b2e1
  ╎│╎││││   0x0000b573      mov   dword [rsp+0x200], r12d
  ╎│╎││││   0x0000b57b      mov   qword [rsp+0x30], 0x00
  ╎│╎││││   0x0000b584      mov   qword [rsp+0x38], 0x06
  ╎│╎││││   0x0000b58d      mov   qword [rsp+0x40], r14
  ╎│╎││││   0x0000b592      lea   rdi, qword [rsp+0x120]
  ╎│╎││││   0x0000b59a      mov   rsi, rbx
  ╎│╎││││   0x0000b59d      call  method._alloc::vec::Vec_T__as_alloc::vec::spec_from_iter::SpecFromIter_T_I__::from_iter.h747333f870998197
  ╎│╎││││   0x0000b5a2      mov   rbx, qword [rsp+0xd8]
  ╎│╎││││   0x0000b5aa      mov   r13, qword [rsp+0xe0]
  ╎│╎││││   0x0000b5b2      test  r13, r13
  ────────< 0x0000b5b5      jz    0xb600
  ╎│╎││││   0x0000b5b7      xor   r12d, r12d
  ╎│╎││││   0x0000b5ba      mov   rax, 0x4000000000000000              ; "\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff" ; 4611686018427387904
  ╎│╎││││   0x0000b5c4      cmp   r13, rax
  ╎│╎││││   0x0000b5c7      setb  al
  ────────< 0x0000b5ca      jnb   0xd51c
  ╎│╎││││   0x0000b5d0      mov   r14, r13
  ╎│╎││││   0x0000b5d3      add   r14, r13
  ╎│╎││││   0x0000b5d6      mov   r12b, al
  ╎│╎││││   0x0000b5d9      add   r12, r12
  ╎│╎││││   0x0000b5dc      test  r14, r14
  ────────< 0x0000b5df      jz    0xb610
  ╎│╎││││   0x0000b5e1      mov   rdi, r14
  ╎│╎││││   0x0000b5e4      mov   rsi, r12
  ╎│╎││││   0x0000b5e7      call  qword [sym.__rust_alloc]             ; [0x73c90:8]=0xf5c0 sym.__rust_alloc
  ╎│╎││││   0x0000b5ed      mov   r15, rax
  ╎│╎││││   0x0000b5f0      test  r15, r15
  ────────< 0x0000b5f3      jnz   0xb61c
  ────────< 0x0000b5f5      jmp   0xd4fa
  ╎│╎││││   0x0000b5fa      nop   word [rax+rax*1], ax
  ────────> 0x0000b600      mov   r15d, 0x02
  ╎│╎││││   0x0000b606      xor   r14d, r14d
  ────────< 0x0000b609      jmp   0xb61c
  ╎│╎││││   0x0000b60b      nop   dword [rax+rax*1], eax
  ────────> 0x0000b610      mov   r15, r12
  ╎│╎││││   0x0000b613      test  r15, r15
  ────────< 0x0000b616      jz    0xd4fa
  ────────> 0x0000b61c      mov   rdi, r15
  ╎│╎││││   0x0000b61f      mov   rsi, rbx
  ╎│╎││││   0x0000b622      mov   rdx, r14
  ╎│╎││││   0x0000b625      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000b62b      lea   rax, qword [r15+r13*2]
  ╎│╎││││   0x0000b62f      mov   rcx, qword [rsp+0xd0]
  ╎│╎││││   0x0000b637      mov   rdx, qword [rsp+0xd8]
  ╎│╎││││   0x0000b63f      mov   rsi, qword [rsp+0xe0]
  ╎│╎││││   0x0000b647      lea   rsi, qword [rdx+rsi*2]
  ╎│╎││││   0x0000b64b      lea   rdi, qword [rsp+0x38]
  ╎│╎││││   0x0000b650      xorps xmm0, xmm0
  ╎│╎││││   0x0000b653      movups xmmword [rdi+0x38], xmm0
  ╎│╎││││   0x0000b657      mov   qword [rdi+0x48], 0x00
  ╎│╎││││   0x0000b65f      mov   qword [rsp+0x30], r13
  ╎│╎││││   0x0000b664      mov   qword [rsp+0x38], r15
  ╎│╎││││   0x0000b669      mov   qword [rsp+0x40], rax
  ╎│╎││││   0x0000b66e      mov   qword [rsp+0x48], r15
  ╎│╎││││   0x0000b673      mov   qword [rsp+0x50], rcx
  ╎│╎││││   0x0000b678      mov   qword [rsp+0x58], rdx
  ╎│╎││││   0x0000b67d      mov   qword [rsp+0x60], rsi
  ╎│╎││││   0x0000b682      mov   qword [rsp+0x68], rdx
  ╎│╎││││   0x0000b687      mov   byte [rsp+0x88], 0x03
  ╎│╎││││   0x0000b68f      movzx eax, byte [rsp+class.__T_as_core::fmt::Debug_::fmt]
  ╎│╎││││   0x0000b697      mov   byte [rdi+0x53], al
  ╎│╎││││   0x0000b69a      movzx eax, word [rsp+0x150]
  ╎│╎││││   0x0000b6a2      mov   word [rdi+0x51], ax
  ╎│╎││││   0x0000b6a6      mov   byte [rsp+0x8c], 0x03
  ╎│╎││││   0x0000b6ae      movzx eax, byte [rsp+class.__T_as_core::fmt::Debug_::fmt]
  ╎│╎││││   0x0000b6b6      mov   byte [rdi+0x57], al
  ╎│╎││││   0x0000b6b9      movzx eax, word [rsp+0x240]
  ╎│╎││││   0x0000b6c1      mov   word [rdi+0x55], ax
  ╎│╎││││   0x0000b6c5      lea   rdi, qword [rsp+0x1c0]
  ╎│╎││││   0x0000b6cd      lea   rsi, qword [rsp+0x30]
  ╎│╎││││   0x0000b6d2      call  method._alloc::vec::Vec_T__as_alloc::vec::spec_from_iter::SpecFromIter_T_I__::from_iter.h4776bffc6bec4855
  ╎│╎││││   0x0000b6d7      mov   rbx, qword [rsp+0x128]
  ╎│╎││││   0x0000b6df      mov   r13, qword [rsp+0x130]
  ╎│╎││││   0x0000b6e7      test  r13, r13
  ────────< 0x0000b6ea      jz    0xb730
  ╎│╎││││   0x0000b6ec      xor   r12d, r12d
  ╎│╎││││   0x0000b6ef      mov   rax, 0x4000000000000000              ; "\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff" ; 4611686018427387904
  ╎│╎││││   0x0000b6f9      cmp   r13, rax
  ╎│╎││││   0x0000b6fc      setb  al
  ────────< 0x0000b6ff      jnb   0xd527
  ╎│╎││││   0x0000b705      mov   r14, r13
  ╎│╎││││   0x0000b708      add   r14, r13
  ╎│╎││││   0x0000b70b      mov   r12b, al
  ╎│╎││││   0x0000b70e      add   r12, r12
  ╎│╎││││   0x0000b711      test  r14, r14
  ────────< 0x0000b714      jz    0xb740
  ╎│╎││││   0x0000b716      mov   rdi, r14
  ╎│╎││││   0x0000b719      mov   rsi, r12
  ╎│╎││││   0x0000b71c      call  qword [sym.__rust_alloc]             ; [0x73c90:8]=0xf5c0 sym.__rust_alloc
  ╎│╎││││   0x0000b722      mov   r15, rax
  ╎│╎││││   0x0000b725      test  r15, r15
  ────────< 0x0000b728      jnz   0xb74c
  ────────< 0x0000b72a      jmp   0xd50b
  ╎│╎││││   0x0000b72f      nop
  ────────> 0x0000b730      mov   r15d, 0x02
  ╎│╎││││   0x0000b736      xor   r14d, r14d
  ────────< 0x0000b739      jmp   0xb74c
  ╎│╎││││   0x0000b73b      nop   dword [rax+rax*1], eax
  ────────> 0x0000b740      mov   r15, r12
  ╎│╎││││   0x0000b743      test  r15, r15
  ────────< 0x0000b746      jz    0xd50b
  ────────> 0x0000b74c      mov   rdi, r15
  ╎│╎││││   0x0000b74f      mov   rsi, rbx
  ╎│╎││││   0x0000b752      mov   rdx, r14
  ╎│╎││││   0x0000b755      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000b75b      lea   rax, qword [r15+r13*2]
  ╎│╎││││   0x0000b75f      mov   rcx, qword [rsp+0x120]
  ╎│╎││││   0x0000b767      mov   rdx, qword [rsp+0x128]
  ╎│╎││││   0x0000b76f      mov   rsi, qword [rsp+0x130]
  ╎│╎││││   0x0000b777      lea   rsi, qword [rdx+rsi*2]
  ╎│╎││││   0x0000b77b      lea   rdi, qword [rsp+0x38]
  ╎│╎││││   0x0000b780      xorps xmm0, xmm0
  ╎│╎││││   0x0000b783      movups xmmword [rdi+0x38], xmm0
  ╎│╎││││   0x0000b787      mov   qword [rdi+0x48], 0x00
  ╎│╎││││   0x0000b78f      mov   qword [rsp+0x30], r13
  ╎│╎││││   0x0000b794      mov   qword [rsp+0x38], r15
  ╎│╎││││   0x0000b799      mov   qword [rsp+0x40], rax
  ╎│╎││││   0x0000b79e      mov   qword [rsp+0x48], r15
  ╎│╎││││   0x0000b7a3      mov   qword [rsp+0x50], rcx
  ╎│╎││││   0x0000b7a8      mov   qword [rsp+0x58], rdx
  ╎│╎││││   0x0000b7ad      mov   qword [rsp+0x60], rsi
  ╎│╎││││   0x0000b7b2      mov   qword [rsp+0x68], rdx
  ╎│╎││││   0x0000b7b7      mov   byte [rsp+0x88], 0x03
  ╎│╎││││   0x0000b7bf      movzx eax, byte [rsp+class.__T_as_core::fmt::Debug_::fmt]
  ╎│╎││││   0x0000b7c7      mov   byte [rdi+0x53], al
  ╎│╎││││   0x0000b7ca      movzx eax, word [rsp+0x240]
  ╎│╎││││   0x0000b7d2      mov   word [rdi+0x51], ax
  ╎│╎││││   0x0000b7d6      mov   byte [rsp+0x8c], 0x03
  ╎│╎││││   0x0000b7de      movzx eax, byte [rsp+class.__T_as_core::fmt::Debug_::fmt]
  ╎│╎││││   0x0000b7e6      mov   byte [rdi+0x57], al
  ╎│╎││││   0x0000b7e9      movzx eax, word [rsp+0x298]
  ╎│╎││││   0x0000b7f1      mov   word [rdi+0x55], ax
  ╎│╎││││   0x0000b7f5      lea   rdi, qword [rsp+0x150]
  ╎│╎││││   0x0000b7fd      lea   rsi, qword [rsp+0x30]
  ╎│╎││││   0x0000b802      call  method._alloc::vec::Vec_T__as_alloc::vec::spec_from_iter::SpecFromIter_T_I__::from_iter.h4776bffc6bec4855
  ╎│╎││││   0x0000b807      mov   rax, qword [rsp+0x1c0]
  ╎│╎││││   0x0000b80f      mov   qword [rsp+0x230], rax
  ╎│╎││││   0x0000b817      mov   rax, qword [rsp+0x1c8]
  ╎│╎││││   0x0000b81f      mov   qword [rsp+0x208], rax
  ╎│╎││││   0x0000b827      mov   r12, qword [rsp+0x1d0]
  ╎│╎││││   0x0000b82f      mov   rax, qword [rsp+0x150]
  ╎│╎││││   0x0000b837      mov   qword [rsp+0x238], rax
  ╎│╎││││   0x0000b83f      mov   rax, qword [rsp+0x158]
  ╎│╎││││   0x0000b847      mov   qword [rsp+0x218], rax
  ╎│╎││││   0x0000b84f      mov   rax, qword [rsp+0x160]
  ╎│╎││││   0x0000b857      mov   qword [rsp+0x220], rax
  ╎│╎││││   0x0000b85f      mov   rsi, qword [rsp+0x18]
  ╎│╎││││   0x0000b864      test  rsi, rsi
  ╎│╎││││   0x0000b867      lea   rbx, qword method.num_bigint::biguint::convert::from_bitwise_digits_le.h8d2eb187042ebb7a ; 0x10ca0 ; "AWAVATSH\x83\xecX\x88L$\U0000000f\x84\xc9\U0000000f\x84$\U00000001"
  ╎│╎││││   0x0000b86e      mov   r14d, 0xff
  ────────< 0x0000b874      jz    0xb889
  ╎│╎││││   0x0000b876      mov   rdi, qword [rsp+0x20]
  ╎│╎││││   0x0000b87b      add   rsi, rsi
  ╎│╎││││   0x0000b87e      mov   edx, 0x02
  ╎│╎││││   0x0000b883      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000b889      mov   rdx, qword [rsp+0xa8]
  ╎│╎││││   0x0000b891      test  rdx, rdx
  ────────< 0x0000b894      jz    0xb8d0
  ╎│╎││││   0x0000b896      lea   rdi, qword [rsp+0x280]
  ╎│╎││││   0x0000b89e      mov   rsi, qword [rsp+0x110]
  ╎│╎││││   0x0000b8a6      mov   ecx, 0x08
  ╎│╎││││   0x0000b8ab      call  rbx
  ╎│╎││││   0x0000b8ad      mov   rdx, qword [rsp+0x08]
  ╎│╎││││   0x0000b8b2      test  rdx, rdx
  ────────< 0x0000b8b5      jz    0xb8f5
  ────────> 0x0000b8b7      lea   rdi, qword [rsp+0x260]
  ╎│╎││││   0x0000b8bf      mov   rsi, qword [rsp+0x108]
  ╎│╎││││   0x0000b8c7      mov   ecx, 0x08
  ╎│╎││││   0x0000b8cc      call  rbx
  ────────< 0x0000b8ce      jmp   0xb910
  ────────> 0x0000b8d0      movups xmm0, xmmword [0x0005a340]          ; [0x5a340:16]=-1
  ╎│╎││││   0x0000b8d7      movaps xmmword [rsp+0x280], xmm0
  ╎│╎││││   0x0000b8df      mov   qword [rsp+0x290], 0x00
  ╎│╎││││   0x0000b8eb      mov   rdx, qword [rsp+0x08]
  ╎│╎││││   0x0000b8f0      test  rdx, rdx
  ────────< 0x0000b8f3      jnz   0xb8b7
  ────────> 0x0000b8f5      movups xmm0, xmmword [0x0005a340]          ; [0x5a340:16]=-1
  ╎│╎││││   0x0000b8fc      movaps xmmword [rsp+0x260], xmm0
  ╎│╎││││   0x0000b904      mov   qword [rsp+0x270], 0x00
  ────────> 0x0000b910      lea   rdi, qword [rsp+0x298]
  ╎│╎││││   0x0000b918      mov   rsi, qword [rsp+0xf8]
  ╎│╎││││   0x0000b920      mov   rdx, rbp
  ╎│╎││││   0x0000b923      mov   ecx, 0x08
  ╎│╎││││   0x0000b928      call  rbx
  ╎│╎││││   0x0000b92a      mov   rdx, qword [rsp+0x140]
  ╎│╎││││   0x0000b932      test  rdx, rdx
  ────────< 0x0000b935      jz    0xb950
  ╎│╎││││   0x0000b937      lea   rdi, qword [rsp+0x240]
  ╎│╎││││   0x0000b93f      mov   rsi, qword [rsp+0x1b8]
  ╎│╎││││   0x0000b947      mov   ecx, 0x08
  ╎│╎││││   0x0000b94c      call  rbx
  ────────< 0x0000b94e      jmp   0xb96b
  ────────> 0x0000b950      movups xmm0, xmmword [0x0005a340]          ; [0x5a340:16]=-1
  ╎│╎││││   0x0000b957      movaps xmmword [rsp+0x240], xmm0
  ╎│╎││││   0x0000b95f      mov   qword [rsp+0x250], 0x00
  ────────> 0x0000b96b      mov   edx, 0x1d
  ╎│╎││││   0x0000b970      lea   rdi, qword [rsp+0x30]
  ╎│╎││││   0x0000b975      lea   rsi, qword [0x0005a4ce]              ; "79160129948973046149879599747called `Option::unwrap()` on a `None` valueGot error: Cannot write to fileEncryption completed :)\n"
  ╎│╎││││   0x0000b97c      call  qword [method.core::str::converts::from_utf8.h4c6cddb46c34ba93] ; [0x73858:8]=0x55f20 method.core::str::converts::from_utf8.h4c6cddb46c34ba93
  ╎│╎││││   0x0000b982      cmp   qword [rsp+0x30], 0x00
  ────────< 0x0000b988      jnz   0xd3df
  ╎│╎││││   0x0000b98e      mov   rsi, qword [rsp+0x38]
  ╎│╎││││   0x0000b993      test  rsi, rsi
  ────────< 0x0000b996      jz    0xd3df
  ╎│╎││││   0x0000b99c      mov   rdx, qword [rsp+0x40]
  ╎│╎││││   0x0000b9a1      lea   rdi, qword [rsp+0x30]
  ╎│╎││││   0x0000b9a6      mov   ecx, 0x0a
  ╎│╎││││   0x0000b9ab      call  qword [method.num_bigint::biguint::convert::_impl_num_traits::Num_for_num_bigint::biguint::BigUint_::from_str_radix.hcecb7e343cc2be0f] ; [0x737d8:8]=0x10240 method.num_bigint::biguint::convert::_impl_num_traits::Num_for_num_bigint::biguint::BigUint_::from_str_radix.hcecb7e343cc2be0f
  ╎│╎││││   0x0000b9b1      mov   rdi, qword [rsp+0x38]
  ╎│╎││││   0x0000b9b6      test  rdi, rdi
  ────────< 0x0000b9b9      jz    0xd3df
  ╎│╎││││   0x0000b9bf      mov   rsi, qword [rsp+0x30]
  ╎│╎││││   0x0000b9c4      mov   rax, qword [rsp+0x40]
  ╎│╎││││   0x0000b9c9      mov   qword [rsp+0x18], rsi
  ╎│╎││││   0x0000b9ce      mov   qword [rsp+0x20], rdi
  ╎│╎││││   0x0000b9d3      mov   qword [rsp+0x28], rax
  ╎│╎││││   0x0000b9d8      cmp   qword [rsp+0x250], rax
  ────────< 0x0000b9e0      jb    0xba43
  ╎│╎││││   0x0000b9e2      mov   rbx, qword [rsp+0x248]
  ────────< 0x0000b9ea      jnz   0xce20
  ╎│╎││││   0x0000b9f0      shl   rax, 0x03
  ╎│╎││││   0x0000b9f4      nop   word [rax+rax*1], ax
  ────────> 0x0000ba00      test  rax, rax
  ────────< 0x0000ba03      jz    0xba30
  ╎│╎││││   0x0000ba05      mov   rdx, qword [rdi+rax*1-0x08]
  ╎│╎││││   0x0000ba0a      xor   ecx, ecx
  ╎│╎││││   0x0000ba0c      cmp   rdx, qword [rbx+rax*1-0x08]
  ╎│╎││││   0x0000ba11      setnz cl
  ╎│╎││││   0x0000ba14      cmovnbe ecx, r14d
  ╎│╎││││   0x0000ba18      add   rax, 0xfffffffffffffff8
  ╎│╎││││   0x0000ba1c      test  cl, cl
  ────────< 0x0000ba1e      jz    0xba00
  ╎│╎││││   0x0000ba20      cmp   cl, 0x02
  ────────< 0x0000ba23      jnb   0xba43
  ────────< 0x0000ba25      jmp   0xce20
  ╎│╎││││   0x0000ba2a      nop   word [rax+rax*1], ax
  ────────> 0x0000ba30      neg   rax
  ╎│╎││││   0x0000ba33      mov   ecx, 0x00
  ╎│╎││││   0x0000ba38      sbb   ecx, ecx
  ╎│╎││││   0x0000ba3a      cmp   cl, 0x02
  ────────< 0x0000ba3d      jb    0xce20
  ────────> 0x0000ba43      test  rbp, rbp
  ────────< 0x0000ba46      js    0xd4a5
  ╎│╎││││   0x0000ba4c      mov   esi, 0x01
  ╎│╎││││   0x0000ba51      mov   rdi, rbp
  ╎│╎││││   0x0000ba54      lea   rbx, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
  ╎│╎││││   0x0000ba5b      call  rbx
  ╎│╎││││   0x0000ba5d      test  rax, rax
  ────────< 0x0000ba60      jz    0xd3fd
  ╎│╎││││   0x0000ba66      mov   qword [rsp+0xf0], rax
  ╎│╎││││   0x0000ba6e      mov   rdi, rax
  ╎│╎││││   0x0000ba71      mov   rsi, qword [rsp+0xf8]
  ╎│╎││││   0x0000ba79      mov   rdx, rbp
  ╎│╎││││   0x0000ba7c      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000ba82      mov   edi, 0x30                            ; '0'
  ╎│╎││││   0x0000ba87      mov   esi, 0x08
  ╎│╎││││   0x0000ba8c      call  rbx
  ╎│╎││││   0x0000ba8e      test  rax, rax
  ────────< 0x0000ba91      jz    0xd410
  ╎│╎││││   0x0000ba97      mov   rbx, rax
  ╎│╎││││   0x0000ba9a      test  r12, r12
  ────────< 0x0000ba9d      jz    0xbad0
  ────────< 0x0000ba9f      js    0xd591
  ╎│╎││││   0x0000baa5      mov   esi, 0x01
  ╎│╎││││   0x0000baaa      mov   rdi, r12
  ╎│╎││││   0x0000baad      lea   r15, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
  ╎│╎││││   0x0000bab4      call  r15
  ╎│╎││││   0x0000bab7      mov   r14, rax
  ╎│╎││││   0x0000baba      test  rax, rax
  ────────< 0x0000babd      jnz   0xbadd
  ────────< 0x0000babf      jmp   0xd532
  ╎│╎││││   0x0000bac4      nop   word [rax+rax*1], ax
  ────────> 0x0000bad0      mov   r14d, 0x01
  ╎│╎││││   0x0000bad6      lea   r15, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
  ────────> 0x0000badd      mov   rdi, r14
  ╎│╎││││   0x0000bae0      mov   rsi, qword [rsp+0x208]
  ╎│╎││││   0x0000bae8      mov   rdx, r12
  ╎│╎││││   0x0000baeb      mov   r13, qword [reloc.memcpy]            ; [0x73fa0:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000baf2      call  r13
  ╎│╎││││   0x0000baf5      mov   esi, 0x01
  ╎│╎││││   0x0000bafa      mov   rdi, rbp
  ╎│╎││││   0x0000bafd      call  r15
  ╎│╎││││   0x0000bb00      test  rax, rax
  ────────< 0x0000bb03      jz    0xd425
  ╎│╎││││   0x0000bb09      mov   r15, rax
  ╎│╎││││   0x0000bb0c      mov   rdi, rax
  ╎│╎││││   0x0000bb0f      mov   rsi, qword [rsp+0xf8]
  ╎│╎││││   0x0000bb17      mov   rdx, rbp
  ╎│╎││││   0x0000bb1a      call  r13
  ╎│╎││││   0x0000bb1d      mov   qword [rbx], r12
  ╎│╎││││   0x0000bb20      mov   qword [rbx+0x08], r14
  ╎│╎││││   0x0000bb24      mov   qword [rsp+0x2c8], r12
  ╎│╎││││   0x0000bb2c      mov   qword [rbx+0x10], r12
  ╎│╎││││   0x0000bb30      mov   qword [rbx+0x18], rbp
  ╎│╎││││   0x0000bb34      mov   qword [rbx+0x20], r15
  ╎│╎││││   0x0000bb38      mov   qword [rbx+0x28], rbp
  ╎│╎││││   0x0000bb3c      mov   qword [rsp+0x30], 0x02
  ╎│╎││││   0x0000bb45      mov   qword [rsp+0x38], rbx
  ╎│╎││││   0x0000bb4a      mov   qword [rsp+0x40], 0x02
  ╎│╎││││   0x0000bb53      mov   edx, 0x02
  ╎│╎││││   0x0000bb58      lea   rdi, qword [rsp+0x120]
  ╎│╎││││   0x0000bb60      mov   rsi, rbx
  ╎│╎││││   0x0000bb63      call  method.alloc::slice::_impl__T__::concat.h2284397090d6524a
  ╎│╎││││   0x0000bb68      mov   rsi, qword [rbx]
  ╎│╎││││   0x0000bb6b      test  rsi, rsi
  ────────< 0x0000bb6e      jz    0xbb7f
  ╎│╎││││   0x0000bb70      mov   rdi, qword [rbx+0x08]
  ╎│╎││││   0x0000bb74      mov   edx, 0x01
  ╎│╎││││   0x0000bb79      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000bb7f      mov   qword [rsp+0x10], rbp
  ╎│╎││││   0x0000bb84      mov   rsi, qword [rbx+0x18]
  ╎│╎││││   0x0000bb88      test  rsi, rsi
  ╎│╎││││   0x0000bb8b      lea   r14, qword sym.__rust_dealloc        ; 0xf5d0 ; "\xe9;\xa7\U00000002"
  ────────< 0x0000bb92      jz    0xbba0
  ╎│╎││││   0x0000bb94      mov   rdi, qword [rbx+0x20]
  ╎│╎││││   0x0000bb98      mov   edx, 0x01
  ╎│╎││││   0x0000bb9d      call  r14
  ────────> 0x0000bba0      mov   esi, 0x30                            ; '0'
  ╎│╎││││   0x0000bba5      mov   edx, 0x08
  ╎│╎││││   0x0000bbaa      mov   rdi, rbx
  ╎│╎││││   0x0000bbad      call  r14
  ╎│╎││││   0x0000bbb0      mov   rcx, qword [rsp+0x120]
  ╎│╎││││   0x0000bbb8      mov   r14, qword [rsp+0x128]
  ╎│╎││││   0x0000bbc0      mov   r15, qword [rsp+0x130]
  ╎│╎││││   0x0000bbc8      lea   rax, qword [rsp+0x168]
  ╎│╎││││   0x0000bbd0      xorps xmm0, xmm0
  ╎│╎││││   0x0000bbd3      movups xmmword [rax+0x30], xmm0
  ╎│╎││││   0x0000bbd7      movups xmmword [rax+0x20], xmm0
  ╎│╎││││   0x0000bbdb      movups xmmword [rax+0x10], xmm0
  ╎│╎││││   0x0000bbdf      movups xmmword [rax], xmm0
  ╎│╎││││   0x0000bbe2      mov   byte [rax+0x40], 0x00
  ╎│╎││││   0x0000bbe6      movups xmm0, xmmword [0x0005a010]          ; [0x5a010:16]=-1
  ╎│╎││││   0x0000bbed      movaps xmmword [rsp+0x150], xmm0
  ╎│╎││││   0x0000bbf5      mov   qword [rsp+0x160], 0x00
  ╎│╎││││   0x0000bc01      movzx ebp, byte [rsp+class.__T_as_core::fmt::Debug_::fmt]
  ╎│╎││││   0x0000bc09      mov   r13d, 0x40                           ; segment.PHDR ; "\U00000006"
  ╎│╎││││   0x0000bc0f      sub   r13, rbp
  ╎│╎││││   0x0000bc12      mov   rbx, r15
  ╎│╎││││   0x0000bc15      sub   rbx, r13
  ╎│╎││││   0x0000bc18      mov   qword [rsp], rcx
  ────────< 0x0000bc1c      jnb   0xbc40
  ╎│╎││││   0x0000bc1e      lea   rdi, qword [rax+rbp*1]
  ╎│╎││││   0x0000bc22      mov   rsi, r14
  ╎│╎││││   0x0000bc25      mov   rdx, r15
  ╎│╎││││   0x0000bc28      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000bc2e      add   r15, rbp
  ╎│╎││││   0x0000bc31      mov   rbp, qword [rsp+0x10]
  ────────< 0x0000bc36      jmp   0xbcd4
  ╎│╎││││   0x0000bc3b      nop   dword [rax+rax*1], eax
  ────────> 0x0000bc40      mov   r12, r14
  ╎│╎││││   0x0000bc43      test  rbp, rbp
  ────────< 0x0000bc46      jz    0xbc88
  ╎│╎││││   0x0000bc48      add   rbp, rax
  ╎│╎││││   0x0000bc4b      mov   rdi, rbp
  ╎│╎││││   0x0000bc4e      mov   rsi, r14
  ╎│╎││││   0x0000bc51      mov   rdx, r13
  ╎│╎││││   0x0000bc54      mov   r15, rax
  ╎│╎││││   0x0000bc57      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000bc5d      inc   qword [rsp+0x160]
  ╎│╎││││   0x0000bc65      mov   edx, 0x01
  ╎│╎││││   0x0000bc6a      lea   rdi, qword [rsp+0x150]
  ╎│╎││││   0x0000bc72      mov   rsi, r15
  ╎│╎││││   0x0000bc75      mov   rbp, qword [rsp+0x10]
  ╎│╎││││   0x0000bc7a      call  method.md5::compress::soft::compress.h3ee4d353a9663b5a
  ╎│╎││││   0x0000bc7f      add   r13, r14
  ╎│╎││││   0x0000bc82      mov   r15, rbx
  ╎│╎││││   0x0000bc85      mov   r12, r13
  ────────> 0x0000bc88      cmp   r15, 0x40                            ; segment.PHDR ; "\U00000006"
  ╎│╎││││   0x0000bc8c      mov   rbp, qword [rsp+0x10]
  ────────< 0x0000bc91      jb    0xbcb2
  ╎│╎││││   0x0000bc93      mov   rdx, r15
  ╎│╎││││   0x0000bc96      shr   rdx, 0x06
  ╎│╎││││   0x0000bc9a      add   qword [rsp+0x160], rdx
  ╎│╎││││   0x0000bca2      lea   rdi, qword [rsp+0x150]
  ╎│╎││││   0x0000bcaa      mov   rsi, r12
  ╎│╎││││   0x0000bcad      call  method.md5::compress::soft::compress.h3ee4d353a9663b5a
  ────────> 0x0000bcb2      mov   rax, r15
  ╎│╎││││   0x0000bcb5      and   rax, 0xffffffffffffffc0
  ╎│╎││││   0x0000bcb9      and   r15d, 0x3f
  ╎│╎││││   0x0000bcbd      add   r12, rax
  ╎│╎││││   0x0000bcc0      lea   rdi, qword [rsp+0x168]
  ╎│╎││││   0x0000bcc8      mov   rsi, r12
  ╎│╎││││   0x0000bccb      mov   rdx, r15
  ╎│╎││││   0x0000bcce      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ────────> 0x0000bcd4      mov   byte [rsp+class.__T_as_core::fmt::Debug_::fmt], r15b
  ╎│╎││││   0x0000bcdc      movaps xmm0, xmmword [rsp+0x150]
  ╎│╎││││   0x0000bce4      movaps xmm1, xmmword [rsp+0x160]
  ╎│╎││││   0x0000bcec      movaps xmm2, xmmword [rsp+0x170]
  ╎│╎││││   0x0000bcf4      movaps xmm3, xmmword [rsp+0x180]
  ╎│╎││││   0x0000bcfc      movaps xmmword [rsp+0x40], xmm1
  ╎│╎││││   0x0000bd01      mov   rax, qword [rsp+0x1a0]
  ╎│╎││││   0x0000bd09      mov   qword [rsp+0x80], rax
  ╎│╎││││   0x0000bd11      movzx eax, byte [rsp+class.__T_as_core::fmt::Debug_::fmt]
  ╎│╎││││   0x0000bd19      mov   byte [rsp+0x88], al
  ╎│╎││││   0x0000bd20      mov   eax, dword [rsp+0x1a9]
  ╎│╎││││   0x0000bd27      mov   dword [rsp+0x89], eax
  ╎│╎││││   0x0000bd2e      movzx eax, word [rsp+0x1ad]
  ╎│╎││││   0x0000bd36      mov   word [rsp+0x8d], ax
  ╎│╎││││   0x0000bd3e      movzx eax, byte [rsp+class.__T_as_core::fmt::Debug_::fmt]
  ╎│╎││││   0x0000bd46      mov   byte [rsp+0x8f], al
  ╎│╎││││   0x0000bd4d      movaps xmm1, xmmword [rsp+0x190]
  ╎│╎││││   0x0000bd55      movaps xmmword [rsp+0x70], xmm1
  ╎│╎││││   0x0000bd5a      movaps xmmword [rsp+0x60], xmm3
  ╎│╎││││   0x0000bd5f      movaps xmmword [rsp+0x50], xmm2
  ╎│╎││││   0x0000bd64      movaps xmmword [rsp+0x30], xmm0
  ╎│╎││││   0x0000bd69      mov   r12, qword [rsp+0x40]
  ╎│╎││││   0x0000bd6e      movzx ebx, byte [rsp+0x88]
  ╎│╎││││   0x0000bd76      shl   r12, 0x09
  ╎│╎││││   0x0000bd7a      lea   r15, qword [rbx*8]
  ╎│╎││││   0x0000bd82      movaps xmmword [rsp+0xd0], xmm0
  ╎│╎││││   0x0000bd8a      mov   byte [rsp+rbx*1+0x48], 0x80          ; [0x80:1]=80
  ╎│╎││││   0x0000bd8f      mov   rdx, rbx
  ╎│╎││││   0x0000bd92      xor   rdx, 0x3f
  ────────< 0x0000bd96      jz    0xbdac
  ╎│╎││││   0x0000bd98      lea   rax, qword [rsp+0x48]
  ╎│╎││││   0x0000bd9d      lea   rdi, qword [rbx+rax*1]
  ╎│╎││││   0x0000bda1      inc   rdi
  ╎│╎││││   0x0000bda4      xor   esi, esi
  ╎│╎││││   0x0000bda6      call  qword [reloc.memset]                 ; [reloc.memset:8]=0x741d0 reloc.target.memset ; "\xd0A\a"
  ────────> 0x0000bdac      or    r15, r12
  ╎│╎││││   0x0000bdaf      xor   ebx, 0x38                            ; sym.std::io::stdio::OUTPUT_CAPTURE::__getit::__KEY::hbdc5a3155f7305a5 ; "\U0000000e"
  ╎│╎││││   0x0000bdb2      cmp   ebx, 0x08
  ────────< 0x0000bdb5      jnb   0xbe20
  ╎│╎││││   0x0000bdb7      mov   edx, 0x01
  ╎│╎││││   0x0000bdbc      lea   rdi, qword [rsp+0xd0]
  ╎│╎││││   0x0000bdc4      lea   rsi, qword [rsp+0x48]
  ╎│╎││││   0x0000bdc9      call  method.md5::compress::soft::compress.h3ee4d353a9663b5a
  ╎│╎││││   0x0000bdce      xorps xmm0, xmm0
  ╎│╎││││   0x0000bdd1      movaps xmmword [rsp+0x1e0], xmm0
  ╎│╎││││   0x0000bdd9      movaps xmmword [rsp+0x1d0], xmm0
  ╎│╎││││   0x0000bde1      movaps xmmword [rsp+0x1c0], xmm0
  ╎│╎││││   0x0000bde9      mov   qword [rsp+0x1f0], 0x00
  ╎│╎││││   0x0000bdf5      mov   qword [rsp+0x1f8], r15
  ╎│╎││││   0x0000bdfd      mov   edx, 0x01
  ╎│╎││││   0x0000be02      lea   rdi, qword [rsp+0xd0]
  ╎│╎││││   0x0000be0a      lea   rsi, qword [rsp+0x1c0]
  ╎│╎││││   0x0000be12      call  method.md5::compress::soft::compress.h3ee4d353a9663b5a
  ────────< 0x0000be17      jmp   0xbe3f
  ╎│╎││││   0x0000be19      nop   dword [rax], eax
  ────────> 0x0000be20      mov   qword [rsp+0x80], r15
  ╎│╎││││   0x0000be28      mov   edx, 0x01
  ╎│╎││││   0x0000be2d      lea   rdi, qword [rsp+0xd0]
  ╎│╎││││   0x0000be35      lea   rsi, qword [rsp+0x48]
  ╎│╎││││   0x0000be3a      call  method.md5::compress::soft::compress.h3ee4d353a9663b5a
  ────────> 0x0000be3f      movaps xmm0, xmmword [rsp+0xd0]
  ╎│╎││││   0x0000be47      movaps xmmword [rsp+0x1c0], xmm0
  ╎│╎││││   0x0000be4f      mov   rsi, qword [rsp]
  ╎│╎││││   0x0000be53      test  rsi, rsi
  ────────< 0x0000be56      jz    0xbe66
  ╎│╎││││   0x0000be58      mov   edx, 0x01
  ╎│╎││││   0x0000be5d      mov   rdi, r14
  ╎│╎││││   0x0000be60      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000be66      mov   edi, 0x0c                            ; 0xc
  ╎│╎││││   0x0000be6b      mov   esi, 0x01
  ╎│╎││││   0x0000be70      lea   r14, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
  ╎│╎││││   0x0000be77      call  r14
  ╎│╎││││   0x0000be7a      test  rax, rax
  ────────< 0x0000be7d      jz    0xd438
  ╎│╎││││   0x0000be83      mov   rbx, rax
  ╎│╎││││   0x0000be86      mov   eax, dword [rsp+0x1c8]
  ╎│╎││││   0x0000be8d      mov   dword [rbx+0x08], eax
  ╎│╎││││   0x0000be90      mov   rax, qword [rsp+0x1c0]
  ╎│╎││││   0x0000be98      mov   qword [rbx], rax
  ╎│╎││││   0x0000be9b      mov   rax, qword [rsp+0xa8]
  ╎│╎││││   0x0000bea3      cmp   rax, 0x0c                            ; 0xc
  ╎│╎││││   0x0000bea7      mov   r15d, 0x0c                           ; 0xc
  ╎│╎││││   0x0000bead      cmovb r15, rax
  ╎│╎││││   0x0000beb1      test  r15, r15
  ╎│╎││││   0x0000beb4      mov   qword [rsp], r15
  ────────< 0x0000beb8      jz    0xbf00
  ╎│╎││││   0x0000beba      mov   esi, 0x01
  ╎│╎││││   0x0000bebf      mov   rdi, r15
  ╎│╎││││   0x0000bec2      call  r14
  ╎│╎││││   0x0000bec5      mov   qword [rsp+0x118], rax
  ╎│╎││││   0x0000becd      test  rax, rax
  ╎│╎││││   0x0000bed0      lea   r12, qword [rsp+0x1c0]
  ────────< 0x0000bed8      jz    0xd558
  ╎│╎││││   0x0000bede      mov   eax, r15d
  ╎│╎││││   0x0000bee1      and   eax, 0x03
  ╎│╎││││   0x0000bee4      cmp   r15, 0x04
  ────────< 0x0000bee8      jnb   0xbf20
  ╎│╎││││   0x0000beea      xor   esi, esi
  ────────< 0x0000beec      jmp   0xbf89
  ╎│╎││││   0x0000bef1      nop   word [rax+rax*1], ax
  ────────> 0x0000bf00      mov   eax, 0x01
  ╎│╎││││   0x0000bf05      mov   qword [rsp+0x118], rax
  ╎│╎││││   0x0000bf0d      lea   r12, qword [rsp+0x1c0]
  ────────< 0x0000bf15      jmp   0xbfc5
  ╎│╎││││   0x0000bf1a      nop   word [rax+rax*1], ax
  ────────> 0x0000bf20      mov   ecx, r15d
  ╎│╎││││   0x0000bf23      and   ecx, 0x0c                            ; 0xc
  ╎│╎││││   0x0000bf26      xor   edx, edx
  ╎│╎││││   0x0000bf28      mov   r8, qword [rsp+0x110]
  ╎│╎││││   0x0000bf30      mov   r9, qword [rsp+0x118]
  ╎│╎││││   0x0000bf38      nop   dword [rax+rax*1], eax
  ────────> 0x0000bf40      movzx esi, byte [r8+rdx*1]
  ╎│╎││││   0x0000bf45      xor   sil, byte [rbx+rdx*1]
  ╎│╎││││   0x0000bf49      mov   byte [r9+rdx*1], sil
  ╎│╎││││   0x0000bf4d      movzx esi, byte [r8+rdx*1+0x01]
  ╎│╎││││   0x0000bf53      xor   sil, byte [rbx+rdx*1+0x01]
  ╎│╎││││   0x0000bf58      mov   byte [r9+rdx*1+0x01], sil
  ╎│╎││││   0x0000bf5d      movzx esi, byte [r8+rdx*1+0x02]
  ╎│╎││││   0x0000bf63      xor   sil, byte [rbx+rdx*1+0x02]
  ╎│╎││││   0x0000bf68      mov   byte [r9+rdx*1+0x02], sil
  ╎│╎││││   0x0000bf6d      movzx edi, byte [r8+rdx*1+0x03]
  ╎│╎││││   0x0000bf73      xor   dil, byte [rbx+rdx*1+0x03]
  ╎│╎││││   0x0000bf78      lea   rsi, qword [rdx+0x04]
  ╎│╎││││   0x0000bf7c      mov   byte [r9+rdx*1+0x03], dil
  ╎│╎││││   0x0000bf81      mov   rdx, rsi
  ╎│╎││││   0x0000bf84      cmp   rcx, rsi
  ────────< 0x0000bf87      jnz   0xbf40
  ────────> 0x0000bf89      test  rax, rax
  ────────< 0x0000bf8c      jz    0xbfc5
  ╎│╎││││   0x0000bf8e      mov   rcx, qword [rsp+0x118]
  ╎│╎││││   0x0000bf96      add   rcx, rsi
  ╎│╎││││   0x0000bf99      mov   rdx, qword [rsp+0x110]
  ╎│╎││││   0x0000bfa1      add   rdx, rsi
  ╎│╎││││   0x0000bfa4      mov   rdi, rbx
  ╎│╎││││   0x0000bfa7      add   rdi, rsi
  ╎│╎││││   0x0000bfaa      xor   esi, esi
  ╎│╎││││   0x0000bfac      nop   dword [rax], eax
  ────────> 0x0000bfb0      movzx r8d, byte [rdx+rsi*1]
  ╎│╎││││   0x0000bfb5      xor   r8b, byte [rdi+rsi*1]
  ╎│╎││││   0x0000bfb9      mov   byte [rcx+rsi*1], r8b
  ╎│╎││││   0x0000bfbd      inc   rsi
  ╎│╎││││   0x0000bfc0      cmp   rax, rsi
  ────────< 0x0000bfc3      jnz   0xbfb0
  ────────> 0x0000bfc5      mov   esi, 0x0c                            ; 0xc
  ╎│╎││││   0x0000bfca      mov   edx, 0x01
  ╎│╎││││   0x0000bfcf      mov   rdi, rbx
  ╎│╎││││   0x0000bfd2      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ╎│╎││││   0x0000bfd8      mov   rbx, qword [rsp+0x280]
  ╎│╎││││   0x0000bfe0      mov   r14, qword [rsp+0x288]
  ╎│╎││││   0x0000bfe8      mov   r13, qword [rsp+0x290]
  ╎│╎││││   0x0000bff0      mov   rax, qword [rsp+0x250]
  ╎│╎││││   0x0000bff8      mov   qword [rsp+0x40], rax
  ╎│╎││││   0x0000bffd      movaps xmm0, xmmword [rsp+0x240]
  ╎│╎││││   0x0000c005      movaps xmmword [rsp+0x30], xmm0
  ╎│╎││││   0x0000c00a      lea   rdi, qword [rsp+0x150]
  ╎│╎││││   0x0000c012      lea   rsi, qword [rsp+0x30]
  ╎│╎││││   0x0000c017      lea   rdx, qword [rsp+0x260]
  ╎│╎││││   0x0000c01f      call  qword [method.num_bigint::biguint::addition::_impl_core::ops::arith::Add__num_bigint::biguint::BigUint__for_num_bigint::biguint::BigUint_::add.h434d20917464f1bf] ; [0x739b8:8]=0xf660 method.num_bigint::biguint::addition::_impl_core::ops::arith::Add__num_bigint::biguint::BigUint__for_num_bigint::biguint::BigUint_::add.h434d20917464f1bf
  ╎│╎││││   0x0000c025      mov   r15, qword [rsp+0x158]
  ╎│╎││││   0x0000c02d      test  r13, r13
  ────────< 0x0000c030      jz    0xc0a0
  ╎│╎││││   0x0000c032      mov   r8, qword [rsp+0x160]
  ╎│╎││││   0x0000c03a      test  r8, r8
  ────────< 0x0000c03d      jz    0xc0a0
  ╎│╎││││   0x0000c03f      cmp   r8, 0x01
  ────────< 0x0000c043      jnz   0xcd80
  ╎│╎││││   0x0000c049      mov   rsi, qword [r15]
  ╎│╎││││   0x0000c04c      mov   qword [rsp+0x30], rbx
  ╎│╎││││   0x0000c051      mov   qword [rsp+0x38], r14
  ╎│╎││││   0x0000c056      mov   qword [rsp+0x40], r13
  ╎│╎││││   0x0000c05b      lea   rdi, qword [rsp+0x30]
  ╎│╎││││   0x0000c060      call  qword [method.num_bigint::biguint::multiplication::scalar_mul.h07b36d917183c6df] ; [0x73fb0:8]=0x18610 method.num_bigint::biguint::multiplication::scalar_mul.h07b36d917183c6df
  ╎│╎││││   0x0000c066      mov   rax, qword [rsp+0x40]
  ╎│╎││││   0x0000c06b      mov   qword [rsp+0x1d0], rax
  ╎│╎││││   0x0000c073      movups xmm0, xmmword [rsp+0x30]
  ╎│╎││││   0x0000c078      movaps xmmword [rsp+0x1c0], xmm0
  ╎│╎││││   0x0000c080      mov   rbx, qword [rsp+0x150]
  ╎│╎││││   0x0000c088      mov   r14, r15
  ╎│╎││││   0x0000c08b      test  rbx, rbx
  ────────< 0x0000c08e      jnz   0xc0df
  ────────< 0x0000c090      jmp   0xc0f4
  ╎│╎││││   0x0000c092      nop   word [rax+rax*1], ax
  ────────> 0x0000c0a0      movups xmm0, xmmword [0x0005a340]          ; [0x5a340:16]=-1
  ╎│╎││││   0x0000c0a7      movaps xmmword [rsp+0x1c0], xmm0
  ╎│╎││││   0x0000c0af      mov   qword [rsp+0x1d0], 0x00
  ────────> 0x0000c0bb      mov   rsi, qword [rsp+0x150]
  ╎│╎││││   0x0000c0c3      test  rsi, rsi
  ────────< 0x0000c0c6      jz    0xc0da
  ╎│╎││││   0x0000c0c8      shl   rsi, 0x03
  ╎│╎││││   0x0000c0cc      mov   edx, 0x08
  ╎│╎││││   0x0000c0d1      mov   rdi, r15
  ╎│╎││││   0x0000c0d4      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000c0da      test  rbx, rbx
  ────────< 0x0000c0dd      jz    0xc0f4
  ────────> 0x0000c0df      shl   rbx, 0x03
  ╎│╎││││   0x0000c0e3      mov   edx, 0x08
  ╎│╎││││   0x0000c0e8      mov   rdi, r14
  ╎│╎││││   0x0000c0eb      mov   rsi, rbx
  ╎│╎││││   0x0000c0ee      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000c0f4      lea   rbx, qword [rsp+0x150]
  ╎│╎││││   0x0000c0fc      mov   rdi, rbx
  ╎│╎││││   0x0000c0ff      lea   rsi, qword [rsp+0x298]
  ╎│╎││││   0x0000c107      lea   rdx, qword [rsp+0x260]
  ╎│╎││││   0x0000c10f      lea   rcx, qword [rsp+0x18]
  ╎│╎││││   0x0000c114      call  qword [method.num_bigint::biguint::BigUint::modpow.h440e35e4ee0e5d6f] ; [0x73f08:8]=0x10a70 method.num_bigint::biguint::BigUint::modpow.h440e35e4ee0e5d6f
  ╎│╎││││   0x0000c11a      mov   rax, qword [rsp+0x1c0]
  ╎│╎││││   0x0000c122      cmp   rax, qword [rsp+0x150]
  ────────< 0x0000c12a      jnb   0xc170
  ╎│╎││││   0x0000c12c      mov   rax, qword [rsp+0x160]
  ╎│╎││││   0x0000c134      mov   qword [rsp+0x40], rax
  ╎│╎││││   0x0000c139      movups xmm0, xmmword [rsp+0x150]
  ╎│╎││││   0x0000c141      movaps xmmword [rsp+0x30], xmm0
  ╎│╎││││   0x0000c146      lea   rdi, qword [rsp+0x120]
  ╎│╎││││   0x0000c14e      lea   rsi, qword [rsp+0x30]
  ╎│╎││││   0x0000c153      mov   rdx, r12
  ╎│╎││││   0x0000c156      call  qword [method.num_bigint::biguint::addition::_impl_core::ops::arith::Add__num_bigint::biguint::BigUint__for_num_bigint::biguint::BigUint_::add.h434d20917464f1bf] ; [0x739b8:8]=0xf660 method.num_bigint::biguint::addition::_impl_core::ops::arith::Add__num_bigint::biguint::BigUint__for_num_bigint::biguint::BigUint_::add.h434d20917464f1bf
  ╎│╎││││   0x0000c15c      mov   rbx, r12
  ────────< 0x0000c15f      jmp   0xc1a0
  ╎│╎││││   0x0000c161      nop   word [rax+rax*1], ax
  ────────> 0x0000c170      mov   rax, qword [rsp+0x1d0]
  ╎│╎││││   0x0000c178      mov   qword [rsp+0x40], rax
  ╎│╎││││   0x0000c17d      movaps xmm0, xmmword [rsp+0x1c0]
  ╎│╎││││   0x0000c185      movaps xmmword [rsp+0x30], xmm0
  ╎│╎││││   0x0000c18a      lea   rdi, qword [rsp+0x120]
  ╎│╎││││   0x0000c192      lea   rsi, qword [rsp+0x30]
  ╎│╎││││   0x0000c197      mov   rdx, rbx
  ╎│╎││││   0x0000c19a      call  qword [method.num_bigint::biguint::addition::_impl_core::ops::arith::Add__num_bigint::biguint::BigUint__for_num_bigint::biguint::BigUint_::add.h434d20917464f1bf] ; [0x739b8:8]=0xf660 method.num_bigint::biguint::addition::_impl_core::ops::arith::Add__num_bigint::biguint::BigUint__for_num_bigint::biguint::BigUint_::add.h434d20917464f1bf
  ────────> 0x0000c1a0      mov   rsi, qword [rbx]
  ╎│╎││││   0x0000c1a3      test  rsi, rsi
  ────────< 0x0000c1a6      jz    0xc1bb
  ╎│╎││││   0x0000c1a8      mov   rdi, qword [rbx+0x08]
  ╎│╎││││   0x0000c1ac      shl   rsi, 0x03
  ╎│╎││││   0x0000c1b0      mov   edx, 0x08
  ╎│╎││││   0x0000c1b5      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000c1bb      mov   rbx, qword [rsp+0x18]
  ╎│╎││││   0x0000c1c0      mov   r14, qword [rsp+0x20]
  ╎│╎││││   0x0000c1c5      mov   rax, qword [rsp+0x28]
  ╎│╎││││   0x0000c1ca      cmp   rax, 0x01
  ────────< 0x0000c1ce      jz    0xc1e0
  ╎│╎││││   0x0000c1d0      test  rax, rax
  ────────< 0x0000c1d3      jnz   0xc2d0
  ────────< 0x0000c1d9      jmp   0xd4b0
  ╎│╎││││   0x0000c1de      nop
  ────────> 0x0000c1e0      mov   rcx, qword [r14]
  ╎│╎││││   0x0000c1e3      mov   rax, rcx
  ╎│╎││││   0x0000c1e6      shr   rax, 0x20
  ────────< 0x0000c1ea      jnz   0xc2d0
  ╎│╎││││   0x0000c1f0      test  rcx, rcx
  ────────< 0x0000c1f3      jz    0xd4b0
  ╎│╎││││   0x0000c1f9      mov   r15, qword [rsp+0x128]
  ╎│╎││││   0x0000c201      mov   rsi, qword [rsp+0x130]
  ╎│╎││││   0x0000c209      test  rsi, rsi
  ────────< 0x0000c20c      jz    0xcded
  ╎│╎││││   0x0000c212      shl   rsi, 0x03
  ╎│╎││││   0x0000c216      xor   r13d, r13d
  ╎│╎││││   0x0000c219      lea   r12, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
  ────────> 0x0000c220      mov   rax, qword [r15+rsi*1-0x08]
  ╎│╎││││   0x0000c225      mov   rdx, r13
  ╎│╎││││   0x0000c228      div   rcx
  ╎│╎││││   0x0000c22b      mov   r13, rdx
  ╎│╎││││   0x0000c22e      add   rsi, 0xfffffffffffffff8
  ────────< 0x0000c232      jnz   0xc220
  ╎│╎││││   0x0000c234      movups xmm0, xmmword [0x0005a340]          ; [0x5a340:16]=-1
  ╎│╎││││   0x0000c23b      movaps xmmword [rsp+0xd0], xmm0
  ╎│╎││││   0x0000c243      mov   qword [rsp+0xe0], 0x00
  ╎│╎││││   0x0000c24f      test  r13, r13
  ────────< 0x0000c252      jz    0xc27f
  ╎│╎││││   0x0000c254      lea   rdi, qword [rsp+0xd0]
  ╎│╎││││   0x0000c25c      xor   esi, esi
  ╎│╎││││   0x0000c25e      call  method.alloc::raw_vec::RawVec_T_A_::reserve_for_push.h3eb12047060abb62
  ╎│╎││││   0x0000c263      mov   rax, qword [rsp+0xd8]
  ╎│╎││││   0x0000c26b      mov   rcx, qword [rsp+0xe0]
  ╎│╎││││   0x0000c273      mov   qword [rax+rcx*8], r13
  ╎│╎││││   0x0000c277      inc   qword [rsp+0xe0]
  ────────> 0x0000c27f      test  rbx, rbx
  ────────< 0x0000c282      jz    0xc299
  ────────> 0x0000c284      shl   rbx, 0x03
  ╎│╎││││   0x0000c288      mov   edx, 0x08
  ╎│╎││││   0x0000c28d      mov   rdi, r14
  ╎│╎││││   0x0000c290      mov   rsi, rbx
  ╎│╎││││   0x0000c293      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000c299      mov   rsi, qword [rsp+0x120]
  ╎│╎││││   0x0000c2a1      test  rsi, rsi
  ────────< 0x0000c2a4      jz    0xc381
  ╎│╎││││   0x0000c2aa      shl   rsi, 0x03
  ╎│╎││││   0x0000c2ae      mov   edx, 0x08
  ╎│╎││││   0x0000c2b3      mov   rdi, r15
  ╎│╎││││   0x0000c2b6      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────< 0x0000c2bc      jmp   0xc381
  ╎│╎││││   0x0000c2c1      nop   word [rax+rax*1], ax
  ────────> 0x0000c2d0      mov   rax, qword [rsp+0x130]
  ╎│╎││││   0x0000c2d8      mov   qword [rsp+0x1d0], rax
  ╎│╎││││   0x0000c2e0      movups xmm0, xmmword [rsp+0x120]
  ╎│╎││││   0x0000c2e8      movaps xmmword [rsp+0x1c0], xmm0
  ╎│╎││││   0x0000c2f0      mov   rax, qword [rsp+0x28]
  ╎│╎││││   0x0000c2f5      mov   qword [rsp+0x160], rax
  ╎│╎││││   0x0000c2fd      movups xmm0, xmmword [rsp+0x18]
  ╎│╎││││   0x0000c302      movaps xmmword [rsp+0x150], xmm0
  ╎│╎││││   0x0000c30a      lea   rdi, qword [rsp+0x30]
  ╎│╎││││   0x0000c30f      mov   rsi, r12
  ╎│╎││││   0x0000c312      lea   rdx, qword [rsp+0x150]
  ╎│╎││││   0x0000c31a      call  qword [method.num_bigint::biguint::division::div_rem.h50d40015a97df540] ; [0x73960:8]=0x1b870 method.num_bigint::biguint::division::div_rem.h50d40015a97df540
  ╎│╎││││   0x0000c320      lea   rcx, qword [rsp+0x48]
  ╎│╎││││   0x0000c325      mov   rax, qword [rcx+0x10]
  ╎│╎││││   0x0000c329      mov   qword [rsp+0x160], rax
  ╎│╎││││   0x0000c331      movups xmm0, xmmword [rcx]
  ╎│╎││││   0x0000c334      movaps xmmword [rsp+0x150], xmm0
  ╎│╎││││   0x0000c33c      mov   rsi, qword [rsp+0x30]
  ╎│╎││││   0x0000c341      test  rsi, rsi
  ╎│╎││││   0x0000c344      lea   r12, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
  ────────< 0x0000c34b      jz    0xc361
  ╎│╎││││   0x0000c34d      mov   rdi, qword [rsp+0x38]
  ╎│╎││││   0x0000c352      shl   rsi, 0x03
  ╎│╎││││   0x0000c356      mov   edx, 0x08
  ╎│╎││││   0x0000c35b      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000c361      movaps xmm0, xmmword [rsp+0x150]
  ╎│╎││││   0x0000c369      movaps xmmword [rsp+0xd0], xmm0
  ╎│╎││││   0x0000c371      mov   rax, qword [rsp+0x160]
  ╎│╎││││   0x0000c379      mov   qword [rsp+0xe0], rax
  ────────> 0x0000c381      mov   edi, 0x30                            ; '0'
  ╎│╎││││   0x0000c386      mov   esi, 0x08
  ╎│╎││││   0x0000c38b      call  r12
  ╎│╎││││   0x0000c38e      test  rax, rax
  ────────< 0x0000c391      jz    0xd44d
  ╎│╎││││   0x0000c397      mov   rbx, rax
  ╎│╎││││   0x0000c39a      mov   r15, qword [rsp+0x220]
  ╎│╎││││   0x0000c3a2      test  r15, r15
  ────────< 0x0000c3a5      jz    0xc3d0
  ────────< 0x0000c3a7      js    0xd582
  ╎│╎││││   0x0000c3ad      mov   esi, 0x01
  ╎│╎││││   0x0000c3b2      mov   rdi, r15
  ╎│╎││││   0x0000c3b5      call  r12
  ╎│╎││││   0x0000c3b8      mov   r14, rax
  ╎│╎││││   0x0000c3bb      test  rax, rax
  ────────< 0x0000c3be      jnz   0xc3d6
  ────────< 0x0000c3c0      jmp   0xd56b
  ╎│╎││││   0x0000c3c5      nop   word [rax+rax*1], ax
  ────────> 0x0000c3d0      mov   r14d, 0x01
  ────────> 0x0000c3d6      mov   rdi, r14
  ╎│╎││││   0x0000c3d9      mov   rsi, qword [rsp+0x218]
  ╎│╎││││   0x0000c3e1      mov   rdx, r15
  ╎│╎││││   0x0000c3e4      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000c3ea      test  rbp, rbp
  ────────< 0x0000c3ed      js    0xd496
  ╎│╎││││   0x0000c3f3      mov   esi, 0x01
  ╎│╎││││   0x0000c3f8      mov   rdi, rbp
  ╎│╎││││   0x0000c3fb      call  r12
  ╎│╎││││   0x0000c3fe      test  rax, rax
  ────────< 0x0000c401      jz    0xd462
  ╎│╎││││   0x0000c407      mov   r15, rax
  ╎│╎││││   0x0000c40a      mov   rdi, rax
  ╎│╎││││   0x0000c40d      mov   rsi, qword [rsp+0xf8]
  ╎│╎││││   0x0000c415      mov   rdx, rbp
  ╎│╎││││   0x0000c418      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000c41e      mov   rax, qword [rsp+0x220]
  ╎│╎││││   0x0000c426      mov   qword [rbx], rax
  ╎│╎││││   0x0000c429      mov   qword [rbx+0x08], r14
  ╎│╎││││   0x0000c42d      mov   qword [rbx+0x10], rax
  ╎│╎││││   0x0000c431      mov   qword [rbx+0x18], rbp
  ╎│╎││││   0x0000c435      mov   qword [rbx+0x20], r15
  ╎│╎││││   0x0000c439      mov   qword [rbx+0x28], rbp
  ╎│╎││││   0x0000c43d      mov   qword [rsp+0x30], 0x02
  ╎│╎││││   0x0000c446      mov   qword [rsp+0x38], rbx
  ╎│╎││││   0x0000c44b      mov   qword [rsp+0x40], 0x02
  ╎│╎││││   0x0000c454      mov   edx, 0x02
  ╎│╎││││   0x0000c459      lea   rdi, qword [rsp+0x120]
  ╎│╎││││   0x0000c461      mov   rsi, rbx
  ╎│╎││││   0x0000c464      call  method.alloc::slice::_impl__T__::concat.h2284397090d6524a
  ╎│╎││││   0x0000c469      mov   rsi, qword [rbx]
  ╎│╎││││   0x0000c46c      test  rsi, rsi
  ────────< 0x0000c46f      jz    0xc480
  ╎│╎││││   0x0000c471      mov   rdi, qword [rbx+0x08]
  ╎│╎││││   0x0000c475      mov   edx, 0x01
  ╎│╎││││   0x0000c47a      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000c480      mov   rsi, qword [rbx+0x18]
  ╎│╎││││   0x0000c484      test  rsi, rsi
  ╎│╎││││   0x0000c487      lea   r14, qword sym.__rust_dealloc        ; 0xf5d0 ; "\xe9;\xa7\U00000002"
  ────────< 0x0000c48e      jz    0xc49c
  ╎│╎││││   0x0000c490      mov   rdi, qword [rbx+0x20]
  ╎│╎││││   0x0000c494      mov   edx, 0x01
  ╎│╎││││   0x0000c499      call  r14
  ────────> 0x0000c49c      mov   esi, 0x30                            ; '0'
  ╎│╎││││   0x0000c4a1      mov   edx, 0x08
  ╎│╎││││   0x0000c4a6      mov   rdi, rbx
  ╎│╎││││   0x0000c4a9      call  r14
  ╎│╎││││   0x0000c4ac      mov   rcx, qword [rsp+0x120]
  ╎│╎││││   0x0000c4b4      mov   r14, qword [rsp+0x128]
  ╎│╎││││   0x0000c4bc      mov   r15, qword [rsp+0x130]
  ╎│╎││││   0x0000c4c4      lea   rax, qword [rsp+0x170]
  ╎│╎││││   0x0000c4cc      xorps xmm0, xmm0
  ╎│╎││││   0x0000c4cf      movups xmmword [rax+0x30], xmm0
  ╎│╎││││   0x0000c4d3      movups xmmword [rax+0x20], xmm0
  ╎│╎││││   0x0000c4d7      movups xmmword [rax+0x10], xmm0
  ╎│╎││││   0x0000c4db      movups xmmword [rax], xmm0
  ╎│╎││││   0x0000c4de      mov   byte [rax+0x40], 0x00
  ╎│╎││││   0x0000c4e2      mov   qword [rsp+0x150], 0x00
  ╎│╎││││   0x0000c4ee      movaps xmm0, xmmword [0x0005a010]          ; [0x5a010:16]=-1
  ╎│╎││││   0x0000c4f5      movups xmmword [rsp+0x158], xmm0
  ╎│╎││││   0x0000c4fd      mov   dword [rsp+0x168], 0xc3d2e1f0        ; [0xc3d2e1f0:4]=-1
  ╎│╎││││   0x0000c508      movzx ebx, byte [rsp+class.__T_as_core::fmt::Debug_::fmt]
  ╎│╎││││   0x0000c510      mov   ebp, 0x40                            ; segment.PHDR ; "\U00000006"
  ╎│╎││││   0x0000c515      sub   rbp, rbx
  ╎│╎││││   0x0000c518      mov   r12, r15
  ╎│╎││││   0x0000c51b      sub   r12, rbp
  ╎│╎││││   0x0000c51e      mov   qword [rsp+0xa0], rcx
  ────────< 0x0000c526      jnb   0xc540
  ╎│╎││││   0x0000c528      lea   rdi, qword [rax+rbx*1]
  ╎│╎││││   0x0000c52c      mov   rsi, r14
  ╎│╎││││   0x0000c52f      mov   rdx, r15
  ╎│╎││││   0x0000c532      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000c538      add   r15, rbx
  ────────< 0x0000c53b      jmp   0xc5cc
  ────────> 0x0000c540      mov   r13, r14
  ╎│╎││││   0x0000c543      test  rbx, rbx
  ────────< 0x0000c546      jz    0xc584
  ╎│╎││││   0x0000c548      add   rbx, rax
  ╎│╎││││   0x0000c54b      mov   rdi, rbx
  ╎│╎││││   0x0000c54e      mov   rsi, r14
  ╎│╎││││   0x0000c551      mov   rdx, rbp
  ╎│╎││││   0x0000c554      mov   rbx, rax
  ╎│╎││││   0x0000c557      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000c55d      inc   qword [rsp+0x150]
  ╎│╎││││   0x0000c565      mov   edx, 0x01
  ╎│╎││││   0x0000c56a      lea   rdi, qword [rsp+0x158]
  ╎│╎││││   0x0000c572      mov   rsi, rbx
  ╎│╎││││   0x0000c575      call  qword [method.sha1::compress::compress.hfc59a21153830a7d] ; [0x73a60:8]=0x1cdd0 method.sha1::compress::compress.hfc59a21153830a7d
  ╎│╎││││   0x0000c57b      add   rbp, r14
  ╎│╎││││   0x0000c57e      mov   r15, r12
  ╎│╎││││   0x0000c581      mov   r13, rbp
  ────────> 0x0000c584      cmp   r15, 0x40                            ; segment.PHDR ; "\U00000006"
  ────────< 0x0000c588      jb    0xc5aa
  ╎│╎││││   0x0000c58a      mov   rdx, r15
  ╎│╎││││   0x0000c58d      shr   rdx, 0x06
  ╎│╎││││   0x0000c591      add   qword [rsp+0x150], rdx
  ╎│╎││││   0x0000c599      lea   rdi, qword [rsp+0x158]
  ╎│╎││││   0x0000c5a1      mov   rsi, r13
  ╎│╎││││   0x0000c5a4      call  qword [method.sha1::compress::compress.hfc59a21153830a7d] ; [0x73a60:8]=0x1cdd0 method.sha1::compress::compress.hfc59a21153830a7d
  ────────> 0x0000c5aa      mov   rax, r15
  ╎│╎││││   0x0000c5ad      and   rax, 0xffffffffffffffc0
  ╎│╎││││   0x0000c5b1      and   r15d, 0x3f
  ╎│╎││││   0x0000c5b5      add   r13, rax
  ╎│╎││││   0x0000c5b8      lea   rdi, qword [rsp+0x170]
  ╎│╎││││   0x0000c5c0      mov   rsi, r13
  ╎│╎││││   0x0000c5c3      mov   rdx, r15
  ╎│╎││││   0x0000c5c6      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ────────> 0x0000c5cc      mov   byte [rsp+class.__T_as_core::fmt::Debug_::fmt], r15b
  ╎│╎││││   0x0000c5d4      movups xmm0, xmmword [rsp+0x150]
  ╎│╎││││   0x0000c5dc      movups xmm1, xmmword [rsp+0x160]
  ╎│╎││││   0x0000c5e4      movups xmm2, xmmword [rsp+0x170]
  ╎│╎││││   0x0000c5ec      movups xmm3, xmmword [rsp+0x180]
  ╎│╎││││   0x0000c5f4      movaps xmmword [rsp+0x30], xmm0
  ╎│╎││││   0x0000c5f9      movups xmm0, xmmword [rsp+0x1a0]
  ╎│╎││││   0x0000c601      movaps xmmword [rsp+0x80], xmm0
  ╎│╎││││   0x0000c609      movups xmm0, xmmword [rsp+0x190]
  ╎│╎││││   0x0000c611      movaps xmmword [rsp+0x70], xmm0
  ╎│╎││││   0x0000c616      movaps xmmword [rsp+0x60], xmm3
  ╎│╎││││   0x0000c61b      movaps xmmword [rsp+0x50], xmm2
  ╎│╎││││   0x0000c620      movaps xmmword [rsp+0x40], xmm1
  ╎│╎││││   0x0000c625      mov   rax, qword [rsp+0x1b0]
  ╎│╎││││   0x0000c62d      mov   qword [rsp+0x90], rax
  ╎│╎││││   0x0000c635      movzx r15d, al
  ╎│╎││││   0x0000c639      mov   rax, qword [rsp+0x30]
  ╎│╎││││   0x0000c63e      shl   rax, 0x09
  ╎│╎││││   0x0000c642      lea   rbx, qword [r15*8]
  ╎│╎││││   0x0000c64a      or    rbx, rax
  ╎│╎││││   0x0000c64d      lea   rcx, qword [rsp+0x38]
  ╎│╎││││   0x0000c652      mov   eax, dword [rcx+0x10]
  ╎│╎││││   0x0000c655      mov   dword [rsp+0x2c0], eax
  ╎│╎││││   0x0000c65c      movups xmm0, xmmword [rcx]
  ╎│╎││││   0x0000c65f      movaps xmmword [rsp+0x2b0], xmm0
  ╎│╎││││   0x0000c667      mov   byte [rsp+r15*1+0x50], 0x80          ; [0x80:1]=80
  ╎│╎││││   0x0000c66d      mov   rdx, r15
  ╎│╎││││   0x0000c670      xor   rdx, 0x3f
  ────────< 0x0000c674      jz    0xc68a
  ╎│╎││││   0x0000c676      lea   rax, qword [rsp+0x50]
  ╎│╎││││   0x0000c67b      lea   rdi, qword [r15+rax*1]
  ╎│╎││││   0x0000c67f      inc   rdi
  ╎│╎││││   0x0000c682      xor   esi, esi
  ╎│╎││││   0x0000c684      call  qword [reloc.memset]                 ; [reloc.memset:8]=0x741d0 reloc.target.memset ; "\xd0A\a"
  ────────> 0x0000c68a      bswap rbx
  ╎│╎││││   0x0000c68d      xor   r15d, 0x38                           ; sym.std::io::stdio::OUTPUT_CAPTURE::__getit::__KEY::hbdc5a3155f7305a5 ; "\U0000000e"
  ╎│╎││││   0x0000c691      cmp   r15d, 0x08
  ────────< 0x0000c695      jnb   0xc700
  ╎│╎││││   0x0000c697      mov   edx, 0x01
  ╎│╎││││   0x0000c69c      lea   rdi, qword [rsp+0x2b0]
  ╎│╎││││   0x0000c6a4      lea   rsi, qword [rsp+0x50]
  ╎│╎││││   0x0000c6a9      call  qword [method.sha1::compress::compress.hfc59a21153830a7d] ; [0x73a60:8]=0x1cdd0 method.sha1::compress::compress.hfc59a21153830a7d
  ╎│╎││││   0x0000c6af      xorps xmm0, xmm0
  ╎│╎││││   0x0000c6b2      movaps xmmword [rsp+0x1e0], xmm0
  ╎│╎││││   0x0000c6ba      movaps xmmword [rsp+0x1d0], xmm0
  ╎│╎││││   0x0000c6c2      movaps xmmword [rsp+0x1c0], xmm0
  ╎│╎││││   0x0000c6ca      mov   qword [rsp+0x1f0], 0x00
  ╎│╎││││   0x0000c6d6      mov   qword [rsp+0x1f8], rbx
  ╎│╎││││   0x0000c6de      mov   edx, 0x01
  ╎│╎││││   0x0000c6e3      lea   rdi, qword [rsp+0x2b0]
  ╎│╎││││   0x0000c6eb      lea   rsi, qword [rsp+0x1c0]
  ╎│╎││││   0x0000c6f3      call  qword [method.sha1::compress::compress.hfc59a21153830a7d] ; [0x73a60:8]=0x1cdd0 method.sha1::compress::compress.hfc59a21153830a7d
  ────────< 0x0000c6f9      jmp   0xc720
  ╎│╎││││   0x0000c6fb      nop   dword [rax+rax*1], eax
  ────────> 0x0000c700      mov   qword [rsp+0x88], rbx
  ╎│╎││││   0x0000c708      mov   edx, 0x01
  ╎│╎││││   0x0000c70d      lea   rdi, qword [rsp+0x2b0]
  ╎│╎││││   0x0000c715      lea   rsi, qword [rsp+0x50]
  ╎│╎││││   0x0000c71a      call  qword [method.sha1::compress::compress.hfc59a21153830a7d] ; [0x73a60:8]=0x1cdd0 method.sha1::compress::compress.hfc59a21153830a7d
  ────────> 0x0000c720      mov   ebp, dword [rsp+0x2b0]
  ╎│╎││││   0x0000c727      mov   r15d, dword [rsp+0x2b4]
  ╎│╎││││   0x0000c72f      mov   r12d, dword [rsp+0x2b8]
  ╎│╎││││   0x0000c737      mov   rsi, qword [rsp+0xa0]
  ╎│╎││││   0x0000c73f      test  rsi, rsi
  ────────< 0x0000c742      jz    0xc752
  ╎│╎││││   0x0000c744      mov   edx, 0x01
  ╎│╎││││   0x0000c749      mov   rdi, r14
  ╎│╎││││   0x0000c74c      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000c752      mov   edi, 0x0c                            ; 0xc
  ╎│╎││││   0x0000c757      mov   esi, 0x01
  ╎│╎││││   0x0000c75c      call  qword [sym.__rust_alloc]             ; [0x73c90:8]=0xf5c0 sym.__rust_alloc
  ╎│╎││││   0x0000c762      test  rax, rax
  ────────< 0x0000c765      jz    0xd481
  ╎│╎││││   0x0000c76b      mov   rbx, rax
  ╎│╎││││   0x0000c76e      bswap ebp
  ╎│╎││││   0x0000c770      bswap r15d
  ╎│╎││││   0x0000c773      bswap r12d
  ╎│╎││││   0x0000c776      mov   dword [rax], ebp
  ╎│╎││││   0x0000c778      mov   dword [rax+0x04], r15d
  ╎│╎││││   0x0000c77c      mov   dword [rax+0x08], r12d
  ╎│╎││││   0x0000c780      mov   r15, qword [rsp+0x08]
  ╎│╎││││   0x0000c785      test  r15, r15
  ╎│╎││││   0x0000c788      lea   r14, qword [rsp+0x150]
  ────────< 0x0000c790      jz    0xc7d0
  ╎│╎││││   0x0000c792      mov   esi, 0x01
  ╎│╎││││   0x0000c797      mov   rdi, r15
  ╎│╎││││   0x0000c79a      call  qword [sym.__rust_alloc]             ; [0x73c90:8]=0xf5c0 sym.__rust_alloc
  ╎│╎││││   0x0000c7a0      mov   qword [rsp+0xa0], rax
  ╎│╎││││   0x0000c7a8      test  rax, rax
  ╎│╎││││   0x0000c7ab      mov   r12, qword [rsp]
  ────────< 0x0000c7af      jz    0xd545
  ╎│╎││││   0x0000c7b5      lea   rcx, qword [r15-0x01]
  ╎│╎││││   0x0000c7b9      mov   eax, r15d
  ╎│╎││││   0x0000c7bc      and   eax, 0x03
  ╎│╎││││   0x0000c7bf      cmp   rcx, 0x03
  ────────< 0x0000c7c3      jnb   0xc7f0
  ╎│╎││││   0x0000c7c5      xor   esi, esi
  ────────< 0x0000c7c7      jmp   0xc859
  ╎│╎││││   0x0000c7cc      nop   dword [rax], eax
  ────────> 0x0000c7d0      mov   eax, 0x01
  ╎│╎││││   0x0000c7d5      mov   qword [rsp+0xa0], rax
  ╎│╎││││   0x0000c7dd      mov   r12, qword [rsp]
  ────────< 0x0000c7e1      jmp   0xc895
  ╎│╎││││   0x0000c7e6      nop   word [rax+rax*1], ax
  ────────> 0x0000c7f0      mov   ecx, r15d
  ╎│╎││││   0x0000c7f3      and   ecx, 0x0c                            ; 0xc
  ╎│╎││││   0x0000c7f6      xor   edx, edx
  ╎│╎││││   0x0000c7f8      mov   r8, qword [rsp+0x108]
  ╎│╎││││   0x0000c800      mov   r9, qword [rsp+0xa0]
  ╎│╎││││   0x0000c808      nop   dword [rax+rax*1], eax
  ────────> 0x0000c810      movzx esi, byte [r8+rdx*1]
  ╎│╎││││   0x0000c815      xor   sil, byte [rbx+rdx*1]
  ╎│╎││││   0x0000c819      mov   byte [r9+rdx*1], sil
  ╎│╎││││   0x0000c81d      movzx esi, byte [r8+rdx*1+0x01]
  ╎│╎││││   0x0000c823      xor   sil, byte [rbx+rdx*1+0x01]
  ╎│╎││││   0x0000c828      mov   byte [r9+rdx*1+0x01], sil
  ╎│╎││││   0x0000c82d      movzx esi, byte [r8+rdx*1+0x02]
  ╎│╎││││   0x0000c833      xor   sil, byte [rbx+rdx*1+0x02]
  ╎│╎││││   0x0000c838      mov   byte [r9+rdx*1+0x02], sil
  ╎│╎││││   0x0000c83d      movzx edi, byte [r8+rdx*1+0x03]
  ╎│╎││││   0x0000c843      xor   dil, byte [rbx+rdx*1+0x03]
  ╎│╎││││   0x0000c848      lea   rsi, qword [rdx+0x04]
  ╎│╎││││   0x0000c84c      mov   byte [r9+rdx*1+0x03], dil
  ╎│╎││││   0x0000c851      mov   rdx, rsi
  ╎│╎││││   0x0000c854      cmp   rcx, rsi
  ────────< 0x0000c857      jnz   0xc810
  ────────> 0x0000c859      test  rax, rax
  ────────< 0x0000c85c      jz    0xc895
  ╎│╎││││   0x0000c85e      mov   rcx, qword [rsp+0xa0]
  ╎│╎││││   0x0000c866      add   rcx, rsi
  ╎│╎││││   0x0000c869      mov   rdx, qword [rsp+0x108]
  ╎│╎││││   0x0000c871      add   rdx, rsi
  ╎│╎││││   0x0000c874      mov   rdi, rbx
  ╎│╎││││   0x0000c877      add   rdi, rsi
  ╎│╎││││   0x0000c87a      xor   esi, esi
  ╎│╎││││   0x0000c87c      nop   dword [rax], eax
  ────────> 0x0000c880      movzx r8d, byte [rdx+rsi*1]
  ╎│╎││││   0x0000c885      xor   r8b, byte [rdi+rsi*1]
  ╎│╎││││   0x0000c889      mov   byte [rcx+rsi*1], r8b
  ╎│╎││││   0x0000c88d      inc   rsi
  ╎│╎││││   0x0000c890      cmp   rax, rsi
  ────────< 0x0000c893      jnz   0xc880
  ────────> 0x0000c895      mov   esi, 0x0c                            ; 0xc
  ╎│╎││││   0x0000c89a      mov   edx, 0x01
  ╎│╎││││   0x0000c89f      mov   rdi, rbx
  ╎│╎││││   0x0000c8a2      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ╎│╎││││   0x0000c8a8      cmp   qword [rsp+0xe0], 0x00
  ────────< 0x0000c8b1      jz    0xc8f0
  ╎│╎││││   0x0000c8b3      lea   rdi, qword [rsp+0x1c0]
  ╎│╎││││   0x0000c8bb      lea   rsi, qword [rsp+0xd0]
  ╎│╎││││   0x0000c8c3      mov   edx, 0x08
  ╎│╎││││   0x0000c8c8      call  qword [method.num_bigint::biguint::convert::to_bitwise_digits_le.h12b65be15a28145f] ; [0x73d58:8]=0x116a0 method.num_bigint::biguint::convert::to_bitwise_digits_le.h12b65be15a28145f
  ╎│╎││││   0x0000c8ce      mov   rbx, qword [rsp+0x1c0]
  ╎│╎││││   0x0000c8d6      mov   rbp, qword [rsp+0x1d0]
  ╎│╎││││   0x0000c8de      cmp   rbp, 0x0b                            ; 0xb
  ────────< 0x0000c8e2      jbe   0xc91e
  ────────< 0x0000c8e4      jmp   0xc9dd
  ╎│╎││││   0x0000c8e9      nop   dword [rax], eax
  ────────> 0x0000c8f0      mov   edi, 0x01
  ╎│╎││││   0x0000c8f5      mov   esi, 0x01
  ╎│╎││││   0x0000c8fa      call  qword [sym.__rust_alloc]             ; [0x73c90:8]=0xf5c0 sym.__rust_alloc
  ╎│╎││││   0x0000c900      test  rax, rax
  ────────< 0x0000c903      jz    0xd59c
  ╎│╎││││   0x0000c909      mov   byte [rax], 0x00
  ╎│╎││││   0x0000c90c      mov   qword [rsp+0x1c8], rax
  ╎│╎││││   0x0000c914      mov   ebp, 0x01
  ╎│╎││││   0x0000c919      mov   ebx, 0x01
  ────────> 0x0000c91e      mov   r15, qword [rsp+0x1c8]
  ────────< 0x0000c926      jmp   0xc942
  ────────> 0x0000c928      mov   r15, rdi
  ╎│╎││││   0x0000c92b      mov   rbx, r13
  ╎│╎││││   0x0000c92e      nop
  ────────> 0x0000c930      mov   byte [r15+rbp*1], 0x00
  ╎│╎││││   0x0000c935      inc   rbp
  ╎│╎││││   0x0000c938      cmp   rbp, 0x0c                            ; 0xc
  ────────< 0x0000c93c      jz    0xc9d0
  ────────> 0x0000c942      cmp   rbp, rbx
  ────────< 0x0000c945      jnz   0xc930
  ╎│╎││││   0x0000c947      lea   r13, qword [rbx+0x01]
  ╎│╎││││   0x0000c94b      lea   rax, qword [rbx+rbx*1]
  ╎│╎││││   0x0000c94f      cmp   rax, r13
  ╎│╎││││   0x0000c952      cmovnbe r13, rax
  ╎│╎││││   0x0000c956      cmp   r13, 0x09
  ────────< 0x0000c95a      jnb   0xc962
  ╎│╎││││   0x0000c95c      mov   r13d, 0x08
  ────────> 0x0000c962      mov   rdx, r13
  ╎│╎││││   0x0000c965      not   rdx
  ╎│╎││││   0x0000c968      shr   rdx, 0x3f
  ╎│╎││││   0x0000c96c      test  rbx, rbx
  ────────< 0x0000c96f      jz    0xc982
  ╎│╎││││   0x0000c971      mov   qword [rsp+0x30], r15
  ╎│╎││││   0x0000c976      mov   qword [rsp+0x38], rbx
  ╎│╎││││   0x0000c97b      mov   eax, 0x01
  ────────< 0x0000c980      jmp   0xc984
  ────────> 0x0000c982      xor   eax, eax
  ────────> 0x0000c984      mov   qword [rsp+0x40], rax
  ╎│╎││││   0x0000c989      mov   rdi, r14
  ╎│╎││││   0x0000c98c      mov   rsi, r13
  ╎│╎││││   0x0000c98f      lea   rcx, qword [rsp+0x30]
  ╎│╎││││   0x0000c994      call  method.alloc::raw_vec::finish_grow.hf3b338d6b2febecd
  ╎│╎││││   0x0000c999      cmp   qword [rsp+0x150], 0x00
  ╎│╎││││   0x0000c9a2      mov   rdi, qword [rsp+0x158]
  ────────< 0x0000c9aa      jz    0xc928
  ╎│╎││││   0x0000c9b0      mov   rsi, qword [rsp+0x160]
  ╎│╎││││   0x0000c9b8      mov   rax, 0x8000000000000001
  ╎│╎││││   0x0000c9c2      cmp   rsi, rax
  ────────< 0x0000c9c5      jz    0xc930
  ────────< 0x0000c9cb      jmp   0xd3a4
  ────────> 0x0000c9d0      mov   qword [rsp+0x1c8], r15
  ╎│╎││││   0x0000c9d8      mov   ebp, 0x0c                            ; 0xc
  ────────> 0x0000c9dd      mov   qword [rsp+0x1c0], rbx
  ╎│╎││││   0x0000c9e5      mov   qword [rsp+0x1d0], rbp
  ╎│╎││││   0x0000c9ed      mov   rsi, qword [rsp+0xa8]
  ╎│╎││││   0x0000c9f5      test  rsi, rsi
  ────────< 0x0000c9f8      jz    0xca0d
  ╎│╎││││   0x0000c9fa      mov   edx, 0x01
  ╎│╎││││   0x0000c9ff      mov   rdi, qword [rsp+0x110]
  ╎│╎││││   0x0000ca07      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000ca0d      mov   rsi, qword [rsp+0x08]
  ╎│╎││││   0x0000ca12      test  rsi, rsi
  ────────< 0x0000ca15      jz    0xca2a
  ╎│╎││││   0x0000ca17      mov   edx, 0x01
  ╎│╎││││   0x0000ca1c      mov   rdi, qword [rsp+0x108]
  ╎│╎││││   0x0000ca24      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000ca2a      mov   r14, qword [rsp+0x1c8]
  ╎│╎││││   0x0000ca32      mov   rsi, qword [rsp+0x138]
  ╎│╎││││   0x0000ca3a      test  rsi, rsi
  ────────< 0x0000ca3d      jz    0xca52
  ╎│╎││││   0x0000ca3f      mov   edx, 0x01
  ╎│╎││││   0x0000ca44      mov   rdi, qword [rsp+0xf8]
  ╎│╎││││   0x0000ca4c      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000ca52      mov   rsi, qword [rsp+0x140]
  ╎│╎││││   0x0000ca5a      test  rsi, rsi
  ────────< 0x0000ca5d      jz    0xca72
  ╎│╎││││   0x0000ca5f      mov   edx, 0x01
  ╎│╎││││   0x0000ca64      mov   rdi, qword [rsp+0x1b8]
  ╎│╎││││   0x0000ca6c      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000ca72      mov   rsi, qword [rsp+0x100]
  ╎│╎││││   0x0000ca7a      test  rsi, rsi
  ────────< 0x0000ca7d      jz    0xca92
  ╎│╎││││   0x0000ca7f      mov   edx, 0x01
  ╎│╎││││   0x0000ca84      mov   rdi, qword [rsp+0xb0]
  ╎│╎││││   0x0000ca8c      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000ca92      mov   qword [rsp+0xc8], 0x00
  ╎│╎││││   0x0000ca9e      mov   r12, qword [rsp+0xb8]
  ╎│╎││││   0x0000caa6      mov   rdx, qword [rsp+0x10]
  ╎│╎││││   0x0000caab      cmp   r12, rdx
  ╎│╎││││   0x0000caae      mov   qword [rsp+0x210], r14
  ────────< 0x0000cab6      jnb   0xcae0
  ╎│╎││││   0x0000cab8      lea   rdi, qword [rsp+0xb8]
  ╎│╎││││   0x0000cac0      xor   esi, esi
  ╎│╎││││   0x0000cac2      call  method.alloc::raw_vec::RawVec_T_A_::reserve::do_reserve_and_handle.hc03383ffdf87e803
  ╎│╎││││   0x0000cac7      mov   r12, qword [rsp+0xb8]
  ╎│╎││││   0x0000cacf      mov   r15, qword [rsp+0xc8]
  ────────< 0x0000cad7      jmp   0xcae3
  ╎│╎││││   0x0000cad9      nop   dword [rax], eax
  ────────> 0x0000cae0      xor   r15d, r15d
  ────────> 0x0000cae3      mov   r13, qword [rsp+0xc0]
  ╎│╎││││   0x0000caeb      lea   rdi, qword [r15+r13*1]
  ╎│╎││││   0x0000caef      mov   rsi, qword [rsp+0xf0]
  ╎│╎││││   0x0000caf7      mov   r14, qword [rsp+0x10]
  ╎│╎││││   0x0000cafc      mov   rdx, r14
  ╎│╎││││   0x0000caff      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000cb05      add   r15, r14
  ╎│╎││││   0x0000cb08      mov   qword [rsp+0xc8], r15
  ╎│╎││││   0x0000cb10      mov   rax, r12
  ╎│╎││││   0x0000cb13      sub   rax, r15
  ╎│╎││││   0x0000cb16      mov   rdx, qword [rsp]
  ╎│╎││││   0x0000cb1a      cmp   rax, rdx
  ────────< 0x0000cb1d      jnb   0xcb4f
  ╎│╎││││   0x0000cb1f      lea   rdi, qword [rsp+0xb8]
  ╎│╎││││   0x0000cb27      mov   rsi, r15
  ╎│╎││││   0x0000cb2a      mov   r14, qword [rsp+0x210]
  ╎│╎││││   0x0000cb32      call  method.alloc::raw_vec::RawVec_T_A_::reserve::do_reserve_and_handle.hc03383ffdf87e803
  ╎│╎││││   0x0000cb37      mov   r15, qword [rsp+0xc8]
  ╎│╎││││   0x0000cb3f      mov   r12, qword [rsp+0xb8]
  ╎│╎││││   0x0000cb47      mov   r13, qword [rsp+0xc0]
  ────────> 0x0000cb4f      lea   rdi, qword [r15+r13*1]
  ╎│╎││││   0x0000cb53      mov   rsi, qword [rsp+0x118]
  ╎│╎││││   0x0000cb5b      mov   r14, qword [rsp]
  ╎│╎││││   0x0000cb5f      mov   rdx, r14
  ╎│╎││││   0x0000cb62      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000cb68      add   r15, r14
  ╎│╎││││   0x0000cb6b      mov   qword [rsp+0xc8], r15
  ╎│╎││││   0x0000cb73      sub   r12, r15
  ╎│╎││││   0x0000cb76      cmp   r12, rbp
  ────────< 0x0000cb79      jnb   0xcbb0
  ╎│╎││││   0x0000cb7b      lea   rdi, qword [rsp+0xb8]
  ╎│╎││││   0x0000cb83      mov   rsi, r15
  ╎│╎││││   0x0000cb86      mov   rdx, rbp
  ╎│╎││││   0x0000cb89      mov   r14, qword [rsp+0x210]
  ╎│╎││││   0x0000cb91      call  method.alloc::raw_vec::RawVec_T_A_::reserve::do_reserve_and_handle.hc03383ffdf87e803
  ╎│╎││││   0x0000cb96      mov   r13, qword [rsp+0xc0]
  ╎│╎││││   0x0000cb9e      mov   r15, qword [rsp+0xc8]
  ────────< 0x0000cba6      jmp   0xcbb8
  ╎│╎││││   0x0000cba8      nop   dword [rax+rax*1], eax
  ────────> 0x0000cbb0      mov   r14, qword [rsp+0x210]
  ────────> 0x0000cbb8      add   r13, r15
  ╎│╎││││   0x0000cbbb      mov   rdi, r13
  ╎│╎││││   0x0000cbbe      mov   rsi, r14
  ╎│╎││││   0x0000cbc1      mov   rdx, rbp
  ╎│╎││││   0x0000cbc4      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000cbca      add   r15, rbp
  ╎│╎││││   0x0000cbcd      mov   qword [rsp+0xc8], r15
  ╎│╎││││   0x0000cbd5      mov   r12, qword [rsp+0xb8]
  ╎│╎││││   0x0000cbdd      mov   rax, r12
  ╎│╎││││   0x0000cbe0      sub   rax, r15
  ╎│╎││││   0x0000cbe3      mov   rdx, qword [rsp+0x08]
  ╎│╎││││   0x0000cbe8      cmp   rax, rdx
  ────────< 0x0000cbeb      jnb   0xcc0d
  ╎│╎││││   0x0000cbed      lea   rdi, qword [rsp+0xb8]
  ╎│╎││││   0x0000cbf5      mov   rsi, r15
  ╎│╎││││   0x0000cbf8      call  method.alloc::raw_vec::RawVec_T_A_::reserve::do_reserve_and_handle.hc03383ffdf87e803
  ╎│╎││││   0x0000cbfd      mov   r12, qword [rsp+0xb8]
  ╎│╎││││   0x0000cc05      mov   r15, qword [rsp+0xc8]
  ────────> 0x0000cc0d      mov   r14, qword [rsp+0xc0]
  ╎│╎││││   0x0000cc15      lea   rdi, qword [r14+r15*1]
  ╎│╎││││   0x0000cc19      mov   rsi, qword [rsp+0xa0]
  ╎│╎││││   0x0000cc21      mov   r13, qword [rsp+0x08]
  ╎│╎││││   0x0000cc26      mov   rdx, r13
  ╎│╎││││   0x0000cc29      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000cc2f      add   r15, r13
  ╎│╎││││   0x0000cc32      mov   qword [rsp+0xc8], r15
  ╎│╎││││   0x0000cc3a      mov   rsi, qword [rsp+0x218]
  ╎│╎││││   0x0000cc42      mov   rdx, qword [rsp+0x220]
  ╎│╎││││   0x0000cc4a      lea   rax, qword [rsi+rdx*1]
  ╎│╎││││   0x0000cc4e      mov   qword [rsp+0x48], rsi
  ╎│╎││││   0x0000cc53      mov   rcx, qword [rsp+0x238]
  ╎│╎││││   0x0000cc5b      mov   qword [rsp+0x30], rcx
  ╎│╎││││   0x0000cc60      mov   qword [rsp+0x38], rsi
  ╎│╎││││   0x0000cc65      mov   qword [rsp+0x40], rax
  ╎│╎││││   0x0000cc6a      sub   r12, r15
  ╎│╎││││   0x0000cc6d      cmp   r12, rdx
  ────────< 0x0000cc70      jnb   0xcca0
  ╎│╎││││   0x0000cc72      lea   rdi, qword [rsp+0xb8]
  ╎│╎││││   0x0000cc7a      mov   rsi, r15
  ╎│╎││││   0x0000cc7d      call  method.alloc::raw_vec::RawVec_T_A_::reserve::do_reserve_and_handle.hc03383ffdf87e803
  ╎│╎││││   0x0000cc82      mov   r12d, dword [rsp+0x200]
  ╎│╎││││   0x0000cc8a      mov   r14, qword [rsp+0xc0]
  ╎│╎││││   0x0000cc92      mov   r15, qword [rsp+0xc8]
  ────────< 0x0000cc9a      jmp   0xcca8
  ╎│╎││││   0x0000cc9c      nop   dword [rax], eax
  ────────> 0x0000cca0      mov   r12d, dword [rsp+0x200]
  ────────> 0x0000cca8      mov   qword [rsp+0x200], r14
  ╎│╎││││   0x0000ccb0      lea   rdi, qword [r14+r15*1]
  ╎│╎││││   0x0000ccb4      mov   r14, qword [rsp+0x218]
  ╎│╎││││   0x0000ccbc      mov   rsi, r14
  ╎│╎││││   0x0000ccbf      mov   r13, qword [rsp+0x220]
  ╎│╎││││   0x0000ccc7      mov   rdx, r13
  ╎│╎││││   0x0000ccca      call  qword [reloc.memcpy]                 ; [reloc.memcpy:8]=0x743c0 reloc.target.memcpy ; "\xc0C\a"
  ╎│╎││││   0x0000ccd0      add   r15, r13
  ╎│╎││││   0x0000ccd3      mov   qword [rsp+0xc8], r15
  ╎│╎││││   0x0000ccdb      mov   rsi, qword [rsp+0x238]
  ╎│╎││││   0x0000cce3      test  rsi, rsi
  ────────< 0x0000cce6      jz    0xccf6
  ╎│╎││││   0x0000cce8      mov   edx, 0x01
  ╎│╎││││   0x0000cced      mov   rdi, r14
  ╎│╎││││   0x0000ccf0      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000ccf6      mov   rsi, qword [rsp+0xd0]
  ╎│╎││││   0x0000ccfe      test  rsi, rsi
  ────────< 0x0000cd01      jz    0xcd1a
  ╎│╎││││   0x0000cd03      mov   rdi, qword [rsp+0xd8]
  ╎│╎││││   0x0000cd0b      shl   rsi, 0x03
  ╎│╎││││   0x0000cd0f      mov   edx, 0x08
  ╎│╎││││   0x0000cd14      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cd1a      mov   rsi, qword [rsp+0x298]
  ╎│╎││││   0x0000cd22      test  rsi, rsi
  ╎│╎││││   0x0000cd25      mov   r14, qword [rsp+0x210]
  ────────< 0x0000cd2d      jz    0xcd46
  ╎│╎││││   0x0000cd2f      mov   rdi, qword [rsp+0x2a0]
  ╎│╎││││   0x0000cd37      shl   rsi, 0x03
  ╎│╎││││   0x0000cd3b      mov   edx, 0x08
  ╎│╎││││   0x0000cd40      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cd46      inc   r12d
  ╎│╎││││   0x0000cd49      mov   rsi, qword [rsp+0x260]
  ╎│╎││││   0x0000cd51      test  rsi, rsi
  ────────< 0x0000cd54      jz    0xb320
  ╎│╎││││   0x0000cd5a      mov   rdi, qword [rsp+0x268]
  ╎│╎││││   0x0000cd62      shl   rsi, 0x03
  ╎│╎││││   0x0000cd66      mov   edx, 0x08
  ╎│╎││││   0x0000cd6b      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────< 0x0000cd71      jmp   0xb320
  ╎│╎││││   0x0000cd76      nop   word [rax+rax*1], ax
  ────────> 0x0000cd80      cmp   r13, 0x01
  ────────< 0x0000cd84      jnz   0xcdd6
  ╎│╎││││   0x0000cd86      mov   rsi, qword [r14]
  ╎│╎││││   0x0000cd89      mov   rax, qword [rsp+0x160]
  ╎│╎││││   0x0000cd91      mov   qword [rsp+0x40], rax
  ╎│╎││││   0x0000cd96      movups xmm0, xmmword [rsp+0x150]
  ╎│╎││││   0x0000cd9e      movaps xmmword [rsp+0x30], xmm0
  ╎│╎││││   0x0000cda3      lea   rdi, qword [rsp+0x30]
  ╎│╎││││   0x0000cda8      call  qword [method.num_bigint::biguint::multiplication::scalar_mul.h07b36d917183c6df] ; [0x73fb0:8]=0x18610 method.num_bigint::biguint::multiplication::scalar_mul.h07b36d917183c6df
  ╎│╎││││   0x0000cdae      mov   rax, qword [rsp+0x40]
  ╎│╎││││   0x0000cdb3      mov   qword [rsp+0x1d0], rax
  ╎│╎││││   0x0000cdbb      movaps xmm0, xmmword [rsp+0x30]
  ╎│╎││││   0x0000cdc0      movaps xmmword [rsp+0x1c0], xmm0
  ╎│╎││││   0x0000cdc8      test  rbx, rbx
  ────────< 0x0000cdcb      jnz   0xc0df
  ────────< 0x0000cdd1      jmp   0xc0f4
  ────────> 0x0000cdd6      mov   rdi, r12
  ╎│╎││││   0x0000cdd9      mov   rsi, r14
  ╎│╎││││   0x0000cddc      mov   rdx, r13
  ╎│╎││││   0x0000cddf      mov   rcx, r15
  ╎│╎││││   0x0000cde2      call  qword [method.num_bigint::biguint::multiplication::mul3.hdf8ae0d96abcbfca] ; [0x73d70:8]=0x18430 method.num_bigint::biguint::multiplication::mul3.hdf8ae0d96abcbfca
  ────────< 0x0000cde8      jmp   0xc0bb
  ────────> 0x0000cded      movups xmm0, xmmword [0x0005a340]          ; [0x5a340:16]=-1
  ╎│╎││││   0x0000cdf4      movaps xmmword [rsp+0xd0], xmm0
  ╎│╎││││   0x0000cdfc      mov   qword [rsp+0xe0], 0x00
  ╎│╎││││   0x0000ce08      lea   r12, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
  ╎│╎││││   0x0000ce0f      test  rbx, rbx
  ────────< 0x0000ce12      jnz   0xc284
  ────────< 0x0000ce18      jmp   0xc299
  ╎│╎││││   0x0000ce1d      nop   dword [rax], eax
  ────────> 0x0000ce20      test  rsi, rsi
  ────────< 0x0000ce23      jz    0xce34
  ╎│╎││││   0x0000ce25      shl   rsi, 0x03
  ╎│╎││││   0x0000ce29      mov   edx, 0x08
  ╎│╎││││   0x0000ce2e      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000ce34      mov   rsi, qword [rsp+0x240]
  ╎│╎││││   0x0000ce3c      test  rsi, rsi
  ╎│╎││││   0x0000ce3f      mov   r14, qword [rsp+0x238]
  ╎│╎││││   0x0000ce47      mov   r15, qword [rsp+0x218]
  ╎│╎││││   0x0000ce4f      mov   r13, qword [rsp+0x318]
  ╎│╎││││   0x0000ce57      mov   rbp, qword [rsp+0x310]
  ────────< 0x0000ce5f      jz    0xce73
  ╎│╎││││   0x0000ce61      shl   rsi, 0x03
  ╎│╎││││   0x0000ce65      mov   edx, 0x08
  ╎│╎││││   0x0000ce6a      mov   rdi, rbx
  ╎│╎││││   0x0000ce6d      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000ce73      mov   rsi, qword [rsp+0x298]
  ╎│╎││││   0x0000ce7b      test  rsi, rsi
  ────────< 0x0000ce7e      jz    0xce97
  ╎│╎││││   0x0000ce80      mov   rdi, qword [rsp+0x2a0]
  ╎│╎││││   0x0000ce88      shl   rsi, 0x03
  ╎│╎││││   0x0000ce8c      mov   edx, 0x08
  ╎│╎││││   0x0000ce91      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000ce97      mov   rsi, qword [rsp+0x260]
  ╎│╎││││   0x0000ce9f      test  rsi, rsi
  ────────< 0x0000cea2      jz    0xcebb
  ╎│╎││││   0x0000cea4      mov   rdi, qword [rsp+0x268]
  ╎│╎││││   0x0000ceac      shl   rsi, 0x03
  ╎│╎││││   0x0000ceb0      mov   edx, 0x08
  ╎│╎││││   0x0000ceb5      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cebb      mov   rsi, qword [rsp+0x280]
  ╎│╎││││   0x0000cec3      test  rsi, rsi
  ────────< 0x0000cec6      jz    0xcedf
  ╎│╎││││   0x0000cec8      mov   rdi, qword [rsp+0x288]
  ╎│╎││││   0x0000ced0      shl   rsi, 0x03
  ╎│╎││││   0x0000ced4      mov   edx, 0x08
  ╎│╎││││   0x0000ced9      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cedf      test  r14, r14
  ────────< 0x0000cee2      jz    0xcef5
  ╎│╎││││   0x0000cee4      mov   edx, 0x01
  ╎│╎││││   0x0000cee9      mov   rdi, r15
  ╎│╎││││   0x0000ceec      mov   rsi, r14
  ╎│╎││││   0x0000ceef      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cef5      mov   rsi, qword [rsp+0x230]
  ╎│╎││││   0x0000cefd      test  rsi, rsi
  ────────< 0x0000cf00      jz    0xcf15
  ╎│╎││││   0x0000cf02      mov   edx, 0x01
  ╎│╎││││   0x0000cf07      mov   rdi, qword [rsp+0x208]
  ╎│╎││││   0x0000cf0f      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cf15      mov   rsi, qword [rsp+0xb8]
  ╎│╎││││   0x0000cf1d      test  rsi, rsi
  ╎│╎││││   0x0000cf20      lea   r14, qword [rsp+0x150]
  ╎│╎││││   0x0000cf28      mov   r15, qword [rsp+0x320]
  ────────< 0x0000cf30      jz    0xcf45
  ╎│╎││││   0x0000cf32      mov   rdi, qword [rsp+0xc0]
  ╎│╎││││   0x0000cf3a      mov   edx, 0x01
  ╎│╎││││   0x0000cf3f      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cf45      mov   rsi, qword [rsp+0x100]
  ╎│╎││││   0x0000cf4d      test  rsi, rsi
  ╎│╎││││   0x0000cf50      lea   rbx, qword [rsp+0x1c0]
  ╎│╎││││   0x0000cf58      lea   r12, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
  ────────< 0x0000cf5f      jz    0xcf74
  ╎│╎││││   0x0000cf61      mov   edx, 0x01
  ╎│╎││││   0x0000cf66      mov   rdi, qword [rsp+0xb0]
  ╎│╎││││   0x0000cf6e      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cf74      mov   rsi, qword [rsp+0x140]
  ╎│╎││││   0x0000cf7c      test  rsi, rsi
  ────────< 0x0000cf7f      jz    0xcf94
  ╎│╎││││   0x0000cf81      mov   edx, 0x01
  ╎│╎││││   0x0000cf86      mov   rdi, qword [rsp+0x1b8]
  ╎│╎││││   0x0000cf8e      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cf94      mov   rsi, qword [rsp+0x138]
  ╎│╎││││   0x0000cf9c      test  rsi, rsi
  ────────< 0x0000cf9f      jz    0xcfb4
  ╎│╎││││   0x0000cfa1      mov   edx, 0x01
  ╎│╎││││   0x0000cfa6      mov   rdi, qword [rsp+0xf8]
  ╎│╎││││   0x0000cfae      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cfb4      mov   rsi, qword [rsp+0x08]
  ╎│╎││││   0x0000cfb9      test  rsi, rsi
  ────────< 0x0000cfbc      jz    0xcfd1
  ╎│╎││││   0x0000cfbe      mov   edx, 0x01
  ╎│╎││││   0x0000cfc3      mov   rdi, qword [rsp+0x108]
  ╎│╎││││   0x0000cfcb      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cfd1      mov   rsi, qword [rsp+0xa8]
  ╎│╎││││   0x0000cfd9      test  rsi, rsi
  ────────< 0x0000cfdc      jz    0xcff1
  ╎│╎││││   0x0000cfde      mov   edx, 0x01
  ╎│╎││││   0x0000cfe3      mov   rdi, qword [rsp+0x110]
  ╎│╎││││   0x0000cfeb      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000cff1      lea   rax, qword [0x0005a040]              ; "Prime too small!"
  ╎│╎││││   0x0000cff8      mov   qword [rsp+0x1c0], rax
  ╎│╎││││   0x0000d000      mov   qword [rsp+0x1c8], 0x10              ; [0x10:8]=0x1003e0003
  ╎│╎││││   0x0000d00c      mov   qword [rsp+0x150], rbx
  ╎│╎││││   0x0000d014      lea   rax, qword method.__T_as_core::fmt::Display_::fmt.hd569f9dd043c00e8 ; 0xde90 ; "H\x89\xf2H\x8b\aH\x8bw\bH\x89\xc7\xff%\x85`\U00000006"
  ╎│╎││││   0x0000d01b      mov   qword [rsp+0x158], rax
  ╎│╎││││   0x0000d023      lea   rax, qword [0x000701e0]
  ╎│╎││││   0x0000d02a      mov   qword [rsp+0x40], rax
  ╎│╎││││   0x0000d02f      mov   qword [rsp+0x48], 0x02
  ╎│╎││││   0x0000d038      mov   qword [rsp+0x30], 0x00
  ╎│╎││││   0x0000d041      mov   qword [rsp+0x50], r14
  ╎│╎││││   0x0000d046      mov   qword [rsp+0x58], 0x01
  ╎│╎││││   0x0000d04f      lea   rdi, qword [rsp+0x30]
  ╎│╎││││   0x0000d054      call  qword [method.std::io::stdio::_print.h51ef4be672257529] ; [0x73fd8:8]=0x21b80 method.std::io::stdio::_print.h51ef4be672257529
  ╎│╎││││   0x0000d05a      mov   rsi, qword [rsp+0x2f0]
  ╎│╎││││   0x0000d062      test  rsi, rsi
  ────────< 0x0000d065      jz    0xb16a
  ╎│╎││││   0x0000d06b      mov   rdi, qword [rsp+0x2f8]
  ╎│╎││││   0x0000d073      mov   edx, 0x01
  ╎│╎││││   0x0000d078      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  └───────< 0x0000d07e      jmp   0xb16a
   │╎││││   0x0000d083      nop   word [rax+rax*1], ax
  ────────> 0x0000d090      mov   rbp, qword [rsp+0xb8]
   │╎││││   0x0000d098      test  rsi, rsi
  ┌───────< 0x0000d09b      jz    0xd0b3
  ││╎││││   0x0000d09d      mov   edx, 0x01
  ││╎││││   0x0000d0a2      mov   rdi, rax
  ││╎││││   0x0000d0a5      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ││╎││││   0x0000d0ab      mov   rdi, qword [rsp+0xf0]
  └───────> 0x0000d0b3      mov   rsi, qword [rsp+0x08]
   │╎││││   0x0000d0b8      test  rsi, rsi
  ┌───────< 0x0000d0bb      jz    0xd0d8
  ││╎││││   0x0000d0bd      mov   edx, 0x01
  ││╎││││   0x0000d0c2      mov   rdi, qword [rsp+0xa0]
  ││╎││││   0x0000d0ca      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ││╎││││   0x0000d0d0      mov   rdi, qword [rsp+0xf0]
  └───────> 0x0000d0d8      test  rbx, rbx
   │╎││││   0x0000d0db      lea   r12, qword sym.__rust_alloc          ; 0xf5c0 ; "\xe9\xfb\xa6\U00000002"
  ┌───────< 0x0000d0e2      jz    0xd0fd
  ││╎││││   0x0000d0e4      mov   edx, 0x01
  ││╎││││   0x0000d0e9      mov   rdi, r14
  ││╎││││   0x0000d0ec      mov   rsi, rbx
  ││╎││││   0x0000d0ef      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ││╎││││   0x0000d0f5      mov   rdi, qword [rsp+0xf0]
  └───────> 0x0000d0fd      mov   rsi, qword [rsp]
   │╎││││   0x0000d101      test  rsi, rsi
   │╎││││   0x0000d104      lea   rbx, qword sym.__rust_dealloc        ; 0xf5d0 ; "\xe9;\xa7\U00000002"
  ┌───────< 0x0000d10b      jz    0xd124
  ││╎││││   0x0000d10d      mov   edx, 0x01
  ││╎││││   0x0000d112      mov   rdi, qword [rsp+0x118]
  ││╎││││   0x0000d11a      call  rbx
  ││╎││││   0x0000d11c      mov   rdi, qword [rsp+0xf0]
  └───────> 0x0000d124      mov   edx, 0x01
   │╎││││   0x0000d129      mov   rsi, qword [rsp+0x10]
   │╎││││   0x0000d12e      call  rbx
   │╎││││   0x0000d130      lea   rdi, qword [rsp+0x14c]
   │╎││││   0x0000d138      mov   rbx, qword [rsp+0x200]
   │╎││││   0x0000d140      mov   rsi, rbx
   │╎││││   0x0000d143      mov   rdx, r15
   │╎││││   0x0000d146      call  method.std::io::Write::write_all.he4f016b5ecd53dd5
   │╎││││   0x0000d14b      test  rax, rax
  ┌───────< 0x0000d14e      jnz   0xd681
  ││╎││││   0x0000d154      test  rbp, rbp
  ────────< 0x0000d157      jz    0xd16a
  ││╎││││   0x0000d159      mov   edx, 0x01
  ││╎││││   0x0000d15e      mov   rdi, rbx
  ││╎││││   0x0000d161      mov   rsi, rbp
  ││╎││││   0x0000d164      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────> 0x0000d16a      mov   rsi, qword [rsp+0x2f0]
  ││╎││││   0x0000d172      test  rsi, rsi
  ││╎││││   0x0000d175      lea   rbx, qword sym.__rust_dealloc        ; 0xf5d0 ; "\xe9;\xa7\U00000002"
  ────────< 0x0000d17c      jz    0xd18d
  ││╎││││   0x0000d17e      mov   rdi, qword [rsp+0x2f8]
  ││╎││││   0x0000d186      mov   edx, 0x01
  ││╎││││   0x0000d18b      call  rbx
  ────────> 0x0000d18d      mov   esi, 0x30                            ; '0'
  ││╎││││   0x0000d192      mov   edx, 0x01
  ││╎││││   0x0000d197      mov   rdi, qword [rsp+0x228]
  ││╎││││   0x0000d19f      call  rbx
  ││╎││││   0x0000d1a1      cmp   qword [rsp+0x308], 0x30              ; '0'
  ────────< 0x0000d1aa      jb    0xd273
  ││╎││││   0x0000d1b0      mov   edi, 0x30                            ; '0'
  ││╎││││   0x0000d1b5      mov   esi, 0x01
  ││╎││││   0x0000d1ba      call  r12
  ││╎││││   0x0000d1bd      test  rax, rax
  ││└─────< 0x0000d1c0      jnz   0xb0f0
  ││ └────> 0x0000d1c6      mov   edi, 0x30                            ; '0'
  ││  │││   0x0000d1cb      mov   esi, 0x01
  ││  │││   0x0000d1d0      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ││ ┌────< 0x0000d1d6      jmp   0xd713
  ││ │││└─> 0x0000d1db      test  r14, r14
  ││ │││┌─< 0x0000d1de      jz    0xd3c9
  ││ ││││   0x0000d1e4      mov   rbx, qword [rsp+0x2d8]
  ││ ││││   0x0000d1ec      mov   qword [rsp+0x150], rbx
  ││ ││││   0x0000d1f4      lea   rax, qword sym._alloc::string::String_as_core::fmt::Display_::fmt::h1dc9c753a9e10f19_0xae50 ; "H\x89\xf2H\x8bG\bH\x8bw\U00000010H\x89\xc7\xff%Đ\U00000006"
  ││ ││││   0x0000d1fb      mov   qword [rsp+0x158], rax
  ││ ││││   0x0000d203      lea   rax, qword [0x000700f0]
  ││ ││││   0x0000d20a      mov   qword [rsp+0x40], rax
  ││ ││││   0x0000d20f      mov   qword [rsp+0x48], 0x02
  ││ ││││   0x0000d218      mov   qword [rsp+0x30], 0x00
  ││ ││││   0x0000d221      lea   rax, qword [rsp+0x150]
  ││ ││││   0x0000d229      mov   qword [rsp+0x50], rax
  ││ ││││   0x0000d22e      mov   qword [rsp+0x58], 0x01
  ││ ││││   0x0000d237      lea   rdi, qword [rsp+0x30]
  ││ ││││   0x0000d23c      call  qword [method.std::io::stdio::_print.h51ef4be672257529] ; [0x73fd8:8]=0x21b80 method.std::io::stdio::_print.h51ef4be672257529
  ││ ││││   0x0000d242      lea   r15, qword [rbx+0x08]
  ││ ││││   0x0000d246      lea   r12, qword sym.__rust_dealloc        ; 0xf5d0 ; "\xe9;\xa7\U00000002"
  ││┌─────< 0x0000d24d      jmp   0xd25d
  │││││││   0x0000d24f      nop
  ────────> 0x0000d250      add   r15, 0x18
  │││││││   0x0000d254      dec   r14
  ────────< 0x0000d257      jz    0xd332
  ││└─────> 0x0000d25d      mov   rsi, qword [r15-0x08]
  ││ ││││   0x0000d261      test  rsi, rsi
  ────────< 0x0000d264      jz    0xd250
  ││ ││││   0x0000d266      mov   rdi, qword [r15]
  ││ ││││   0x0000d269      mov   edx, 0x01
  ││ ││││   0x0000d26e      call  r12
  ────────< 0x0000d271      jmp   0xd250
  ────────> 0x0000d273      lea   rax, qword [0x00070218]
  ││ ││││   0x0000d27a      mov   qword [rsp+0x40], rax
  ││ ││││   0x0000d27f      mov   qword [rsp+0x48], 0x01
  ││ ││││   0x0000d288      mov   qword [rsp+0x30], 0x00
  ││ ││││   0x0000d291      lea   rax, qword str.Rusty_School_Encryption_Tool________usage:___filename_to_encrypt__src_main.rsLoading_file_to_encrypt:__.encryptedCannot_create_fileBuffer_overflow79160129948973046149879599747called__Option::unwrap____on_a__None__valueGot_error:_Cannot_write_to_fileEncryption_completed_: ; 0x5a3e8 ; "🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀\n🦀   Rusty School Encryption Tool   🦀\nusage:"
  ││ ││││   0x0000d298      mov   qword [rsp+0x50], rax
  ││ ││││   0x0000d29d      mov   qword [rsp+0x58], 0x00
  ││ ││││   0x0000d2a6      lea   rdi, qword [rsp+0x30]
  ││ ││││   0x0000d2ab      call  qword [method.std::io::stdio::_print.h51ef4be672257529] ; [0x73fd8:8]=0x21b80 method.std::io::stdio::_print.h51ef4be672257529
  ││ ││││   0x0000d2b1      mov   rdi, qword [rsp+0x258]
  ││ ││││   0x0000d2b9      dec   qword [rdi]
  ││┌─────< 0x0000d2bc      jnz   0xd2d4
  │││││││   0x0000d2be      dec   qword [rdi+0x08]
  ────────< 0x0000d2c2      jnz   0xd2d4
  │││││││   0x0000d2c4      mov   esi, 0x170
  │││││││   0x0000d2c9      mov   edx, 0x10
  │││││││   0x0000d2ce      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ──└─────> 0x0000d2d4      mov   edi, dword [rsp+0x14c]
  ││ ││││   0x0000d2db      call  qword [reloc.close]                  ; [reloc.close:8]=0x741f0 reloc.target.close ; "\xf0A\a"
  ││ ││││   0x0000d2e1      mov   edi, dword [rsp+0x148]
  ││ ││││   0x0000d2e8      call  qword [reloc.close]                  ; [reloc.close:8]=0x741f0 reloc.target.close ; "\xf0A\a"
  ││ ││││   0x0000d2ee      mov   rbx, qword [rsp+0x2d8]
  ││ ││││   0x0000d2f6      mov   r14, qword [rsp+0x2e0]
  ││ ││││   0x0000d2fe      test  r14, r14
  ││┌─────< 0x0000d301      jz    0xd332
  │││││││   0x0000d303      lea   r15, qword [rbx+0x08]
  ────────< 0x0000d307      jmp   0xd319
  │││││││   0x0000d309      nop   dword [rax], eax
  ────────> 0x0000d310      add   r15, 0x18
  │││││││   0x0000d314      dec   r14
  ────────< 0x0000d317      jz    0xd332
  ────────> 0x0000d319      mov   rsi, qword [r15-0x08]
  │││││││   0x0000d31d      test  rsi, rsi
  ────────< 0x0000d320      jz    0xd310
  │││││││   0x0000d322      mov   rdi, qword [r15]
  │││││││   0x0000d325      mov   edx, 0x01
  │││││││   0x0000d32a      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ────────< 0x0000d330      jmp   0xd310
  ──└─────> 0x0000d332      mov   rax, qword [rsp+0x2d0]
  ││ ││││   0x0000d33a      test  rax, rax
  ││┌─────< 0x0000d33d      jz    0xd355
  │││││││   0x0000d33f      shl   rax, 0x03
  │││││││   0x0000d343      lea   rsi, qword [rax+rax*2]
  │││││││   0x0000d347      mov   edx, 0x08
  │││││││   0x0000d34c      mov   rdi, rbx
  │││││││   0x0000d34f      call  qword [sym.__rust_dealloc]           ; [0x73a38:8]=0xf5d0 sym.__rust_dealloc
  ││└─────> 0x0000d355      add   rsp, 0x328
  ││ ││││   0x0000d35c      pop   rbx
  ││ ││││   0x0000d35d      pop   r12
  ││ ││││   0x0000d35f      pop   r13
  ││ ││││   0x0000d361      pop   r14
  ││ ││││   0x0000d363      pop   r15
  ││ ││││   0x0000d365      pop   rbp
  ││ ││││   0x0000d366      ret
  ────────> 0x0000d367      mov   edi, 0x01
  ││┌─────< 0x0000d36c      jmp   0xd38f
  ────────> 0x0000d36e      mov   edi, 0x03
  ────────< 0x0000d373      jmp   0xd38f
  ────────> 0x0000d375      mov   edi, 0x05
  ────────< 0x0000d37a      jmp   0xd38f
  ────────> 0x0000d37c      mov   edi, 0x07
  ────────< 0x0000d381      jmp   0xd38f
  ────────> 0x0000d383      mov   edi, 0x09
  ────────< 0x0000d388      jmp   0xd38f
  ────────> 0x0000d38a      mov   edi, 0x0b                            ; 0xb
  ──└─────> 0x0000d38f      lea   rdx, qword [0x000701b0]
  ││ ││││   0x0000d396      mov   rsi, r15
  ││ ││││   0x0000d399      call  qword [method.core::panicking::panic_bounds_check.h84d04f9b36796fb5] ; [0x73d00:8]=0x9d50 method.core::panicking::panic_bounds_check.h84d04f9b36796fb5
  ││┌─────< 0x0000d39f      jmp   0xd713
  ────────> 0x0000d3a4      test  rsi, rsi
  ────────< 0x0000d3a7      jnz   0xd3b9
  │││││││   0x0000d3a9      mov   rbp, qword [rsp+0x10]
  │││││││   0x0000d3ae      call  qword [method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63] ; [0x73dc0:8]=0x52af0 method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63
  ────────< 0x0000d3b4      jmp   0xd713
  ────────> 0x0000d3b9      mov   rbp, qword [rsp+0x10]
  │││││││   0x0000d3be      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d3c4      jmp   0xd713
  ││││││└─> 0x0000d3c9      lea   rdx, qword [0x00070110]
  ││││││    0x0000d3d0      xor   edi, edi
  ││││││    0x0000d3d2      xor   esi, esi
  ││││││    0x0000d3d4      call  qword [method.core::panicking::panic_bounds_check.h84d04f9b36796fb5] ; [0x73d00:8]=0x9d50 method.core::panicking::panic_bounds_check.h84d04f9b36796fb5
  ││││││┌─< 0x0000d3da      jmp   0xd713
  ────────> 0x0000d3df      lea   rdi, qword [0x0005a4eb]              ; "called `Option::unwrap()` on a `None` valueGot error: Cannot write to fileEncryption completed :)\n"
  │││││││   0x0000d3e6      lea   rdx, qword [0x000701c8]
  │││││││   0x0000d3ed      mov   esi, 0x2b                            ; '+'
  │││││││   0x0000d3f2      call  qword [method.core::panicking::panic.hdccd9fd82805fc8e] ; [0x737d0:8]=0x9ca0 method.core::panicking::panic.hdccd9fd82805fc8e
  ────────< 0x0000d3f8      jmp   0xd713
  ────────> 0x0000d3fd      mov   esi, 0x01
  │││││││   0x0000d402      mov   rdi, rbp
  │││││││   0x0000d405      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d40b      jmp   0xd713
  ────────> 0x0000d410      mov   edi, 0x30                            ; '0'
  │││││││   0x0000d415      mov   esi, 0x08
  │││││││   0x0000d41a      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d420      jmp   0xd713
  ────────> 0x0000d425      mov   esi, 0x01
  │││││││   0x0000d42a      mov   rdi, rbp
  │││││││   0x0000d42d      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d433      jmp   0xd713
  ────────> 0x0000d438      mov   edi, 0x0c                            ; 0xc
  │││││││   0x0000d43d      mov   esi, 0x01
  │││││││   0x0000d442      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d448      jmp   0xd713
  ────────> 0x0000d44d      mov   edi, 0x30                            ; '0'
  │││││││   0x0000d452      mov   esi, 0x08
  │││││││   0x0000d457      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d45d      jmp   0xd713
  ────────> 0x0000d462      mov   esi, 0x01
  │││││││   0x0000d467      mov   rdi, rbp
  │││││││   0x0000d46a      mov   r12, qword [rsp]
  │││││││   0x0000d46e      mov   r15, qword [rsp+0x220]
  │││││││   0x0000d476      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d47c      jmp   0xd713
  ────────> 0x0000d481      mov   edi, 0x0c                            ; 0xc
  │││││││   0x0000d486      mov   esi, 0x01
  │││││││   0x0000d48b      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d491      jmp   0xd713
  ────────> 0x0000d496      mov   r12, qword [rsp]
  │││││││   0x0000d49a      call  qword [method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63] ; [0x73dc0:8]=0x52af0 method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63
  ────────< 0x0000d4a0      jmp   0xd713
  ────────> 0x0000d4a5      call  qword [method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63] ; [0x73dc0:8]=0x52af0 method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63
  ────────< 0x0000d4ab      jmp   0xd713
  ────────> 0x0000d4b0      lea   rax, qword section..data.rel.ro      ; 0x70088 ; "X\xa3\U00000005"
  │││││││   0x0000d4b7      mov   qword [rsp+0x40], rax
  │││││││   0x0000d4bc      mov   qword [rsp+0x48], 0x01
  │││││││   0x0000d4c5      mov   qword [rsp+0x30], 0x00
  │││││││   0x0000d4ce      lea   rax, qword str.Rusty_School_Encryption_Tool________usage:___filename_to_encrypt__src_main.rsLoading_file_to_encrypt:__.encryptedCannot_create_fileBuffer_overflow79160129948973046149879599747called__Option::unwrap____on_a__None__valueGot_error:_Cannot_write_to_fileEncryption_completed_: ; 0x5a3e8 ; "🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀🦀\n🦀   Rusty School Encryption Tool   🦀\nusage:"
  │││││││   0x0000d4d5      mov   qword [rsp+0x50], rax
  │││││││   0x0000d4da      mov   qword [rsp+0x58], 0x00
  │││││││   0x0000d4e3      lea   rsi, qword [0x00070098]
  │││││││   0x0000d4ea      lea   rdi, qword [rsp+0x30]
  │││││││   0x0000d4ef      call  qword [method.core::panicking::panic_fmt.h8a7952a49fde5ae6] ; [0x73c60:8]=0x9c20 method.core::panicking::panic_fmt.h8a7952a49fde5ae6
  ────────< 0x0000d4f5      jmp   0xd713
  ────────> 0x0000d4fa      mov   rdi, r14
  │││││││   0x0000d4fd      mov   rsi, r12
  │││││││   0x0000d500      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d506      jmp   0xd713
  ────────> 0x0000d50b      mov   rdi, r14
  │││││││   0x0000d50e      mov   rsi, r12
  │││││││   0x0000d511      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d517      jmp   0xd713
  ────────> 0x0000d51c      call  qword [method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63] ; [0x73dc0:8]=0x52af0 method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63
  ────────< 0x0000d522      jmp   0xd713
  ────────> 0x0000d527      call  qword [method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63] ; [0x73dc0:8]=0x52af0 method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63
  ────────< 0x0000d52d      jmp   0xd713
  ────────> 0x0000d532      mov   esi, 0x01
  │││││││   0x0000d537      mov   rdi, r12
  │││││││   0x0000d53a      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d540      jmp   0xd713
  ────────> 0x0000d545      mov   esi, 0x01
  │││││││   0x0000d54a      mov   rdi, r15
  │││││││   0x0000d54d      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d553      jmp   0xd713
  ────────> 0x0000d558      mov   esi, 0x01
  │││││││   0x0000d55d      mov   rdi, r15
  │││││││   0x0000d560      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d566      jmp   0xd713
  ────────> 0x0000d56b      mov   esi, 0x01
  │││││││   0x0000d570      mov   rdi, r15
  │││││││   0x0000d573      mov   r12, qword [rsp]
  │││││││   0x0000d577      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d57d      jmp   0xd713
  ────────> 0x0000d582      mov   r12, qword [rsp]
  │││││││   0x0000d586      call  qword [method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63] ; [0x73dc0:8]=0x52af0 method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63
  ────────< 0x0000d58c      jmp   0xd713
  ────────> 0x0000d591      call  qword [method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63] ; [0x73dc0:8]=0x52af0 method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63
  ────────< 0x0000d597      jmp   0xd713
  ────────> 0x0000d59c      mov   edi, 0x01
  │││││││   0x0000d5a1      mov   esi, 0x01
  │││││││   0x0000d5a6      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d5ac      jmp   0xd713
  ────────> 0x0000d5b1      mov   edi, 0x0c                            ; 0xc
  │││││││   0x0000d5b6      mov   esi, 0x01
  │││││││   0x0000d5bb      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d5c1      jmp   0xd713
  ────────> 0x0000d5c6      mov   eax, 0x0c                            ; 0xc
  │││││││   0x0000d5cb      mov   qword [rsp+0xa8], rax
  │││││││   0x0000d5d3      mov   edi, 0x0c                            ; 0xc
  │││││││   0x0000d5d8      mov   esi, 0x01
  │││││││   0x0000d5dd      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d5e3      jmp   0xd713
  ────────> 0x0000d5e8      mov   eax, 0x0c                            ; 0xc
  │││││││   0x0000d5ed      mov   qword [rsp+0x08], rax
  │││││││   0x0000d5f2      mov   edi, 0x0c                            ; 0xc
  │││││││   0x0000d5f7      mov   esi, 0x01
  │││││││   0x0000d5fc      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d602      jmp   0xd713
  ────────> 0x0000d607      mov   eax, 0x0c                            ; 0xc
  │││││││   0x0000d60c      mov   qword [rsp+0x138], rax
  │││││││   0x0000d614      mov   edi, 0x0c                            ; 0xc
  │││││││   0x0000d619      mov   esi, 0x01
  │││││││   0x0000d61e      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d624      jmp   0xd713
  ────────> 0x0000d629      call  qword [method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63] ; [0x73dc0:8]=0x52af0 method.alloc::raw_vec::capacity_overflow.hda69ea3a3b3bfc63
  ────────< 0x0000d62f      jmp   0xd713
  ────────> 0x0000d634      mov   esi, 0x01
  │││││││   0x0000d639      mov   rdi, r14
  │││││││   0x0000d63c      call  qword [method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5] ; [0x73c78:8]=0x9a80 method.alloc::alloc::handle_alloc_error.h2c3b3892b97343a5
  ────────< 0x0000d642      jmp   0xd713
  │└──────> 0x0000d647      mov   rax, qword [rsp+0x38]
  │ │││││   0x0000d64c      mov   qword [rsp+0x150], rax
  │ │││││   0x0000d654      lea   rdi, qword [0x0005a4bf]              ; "Buffer overflow79160129948973046149879599747called `Option::unwrap()` on a `None` valueGot error: Cannot write to fileEncryptio"
  │ │││││   0x0000d65b      lea   rcx, qword [0x000700b0]
  │ │││││   0x0000d662      lea   r8, qword [0x00070198]
  │ │││││   0x0000d669      lea   rdx, qword [rsp+0x150]
  │ │││││   0x0000d671      mov   esi, 0x0f                            ; 0xf
  │ │││││   0x0000d676      call  qword [method.core::result::unwrap_failed.h5fa4abcaa6de1d82] ; [0x73f30:8]=0x9b00 method.core::result::unwrap_failed.h5fa4abcaa6de1d82
  │┌──────< 0x0000d67c      jmp   0xd713
  └───────> 0x0000d681      mov   qword [rsp+0x30], rax
   ││││││   0x0000d686      lea   rdi, qword [0x0005a521]              ; "Cannot write to fileEncryption completed :)\n"
   ││││││   0x0000d68d      lea   rcx, qword [0x000700b0]
   ││││││   0x0000d694      lea   r8, qword [0x00070200]
   ││││││   0x0000d69b      lea   rdx, qword [rsp+0x30]
   ││││││   0x0000d6a0      mov   esi, 0x14
   ││││││   0x0000d6a5      call  qword [method.core::result::unwrap_failed.h5fa4abcaa6de1d82] ; [0x73f30:8]=0x9b00 method.core::result::unwrap_failed.h5fa4abcaa6de1d82
  ┌───────< 0x0000d6ab      jmp   0xd713
  │││││└──> 0x0000d6ad      mov   rax, qword [rsp+0x158]
  │││││ │   0x0000d6b5      mov   qword [rsp+0x30], rax
  │││││ │   0x0000d6ba      lea   rdi, qword str.Cannot_open_filePrime_too_small ; 0x5a030 ; "Cannot open filePrime too small!"
  │││││ │   0x0000d6c1      lea   rcx, qword [0x000700b0]
  │││││ │   0x0000d6c8      lea   r8, qword [0x00070148]
  │││││ │   0x0000d6cf      lea   rdx, qword [rsp+0x30]
  │││││ │   0x0000d6d4      mov   esi, 0x10
  │││││ │   0x0000d6d9      call  qword [method.core::result::unwrap_failed.h5fa4abcaa6de1d82] ; [0x73f30:8]=0x9b00 method.core::result::unwrap_failed.h5fa4abcaa6de1d82
  │││││┌──< 0x0000d6df      jmp   0xd713
  ││││└───> 0x0000d6e1      mov   rax, qword [rsp+0x158]
  ││││ ││   0x0000d6e9      mov   qword [rsp+0x30], rax
  ││││ ││   0x0000d6ee      lea   rdi, qword [0x0005a4ad]              ; "Cannot create fileBuffer overflow79160129948973046149879599747called `Option::unwrap()` on a `None` valueGot error: Cannot writ"
  ││││ ││   0x0000d6f5      lea   rcx, qword [0x000700b0]
  ││││ ││   0x0000d6fc      lea   r8, qword [0x00070180]
  ││││ ││   0x0000d703      lea   rdx, qword [rsp+0x30]
  ││││ ││   0x0000d708      mov   esi, 0x12
  ││││ ││   0x0000d70d      call  qword [method.core::result::unwrap_failed.h5fa4abcaa6de1d82] ; [0x73f30:8]=0x9b00 method.core::result::unwrap_failed.h5fa4abcaa6de1d82
  └└└└─└└─> 0x0000d713      ud2
        ┌─< 0x0000d715      jmp   0xd7a9
        │   0x0000d71a      mov   r13, rax
        │   0x0000d71d      lea   rdi, qword [rsp+0x30]
        │   0x0000d722      call  method.core::ptr::drop_in_place_std::io::error::Error_.h6385d8574b65cfa7
       ┌──< 0x0000d727      jmp   0xddcb
       ││   0x0000d72c      call  qword [method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b] ; [0x73ab0:8]=0x9dd0 method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b
       ││   0x0000d732      ud2
       ││   0x0000d734      mov   r13, rax
       ││   0x0000d737      lea   rdi, qword [rsp+0x30]
       ││   0x0000d73c      call  method.core::ptr::drop_in_place_std::io::error::Error_.h6385d8574b65cfa7
      ┌───< 0x0000d741      jmp   0xddd7
      │││   0x0000d746      call  qword [method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b] ; [0x73ab0:8]=0x9dd0 method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b
      │││   0x0000d74c      ud2
      │││   0x0000d74e      mov   r13, rax
     ┌────< 0x0000d751      jmp   0xddbf
     ││││   0x0000d756      mov   r13, rax
    ┌─────< 0x0000d759      jmp   0xddcb
    │││││   0x0000d75e      mov   r13, rax
    │││││   0x0000d761      lea   rdi, qword [rsp+0x30]
    │││││   0x0000d766      call  method.core::ptr::drop_in_place_std::io::error::Error_.h6385d8574b65cfa7
   ┌──────< 0x0000d76b      jmp   0xd778
   ││││││   0x0000d76d      call  qword [method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b] ; [0x73ab0:8]=0x9dd0 method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b
   ││││││   0x0000d773      ud2
   ││││││   0x0000d775      mov   r13, rax
   └──────> 0x0000d778      mov   rdi, rbp
    │││││   0x0000d77b      mov   rsi, qword [rsp+0x200]
   ┌──────< 0x0000d783      jmp   0xdd86
  ┌───────< 0x0000d788      jmp   0xd7f0
  │││││││   0x0000d78a      mov   r13, rax
  │││││││   0x0000d78d      lea   rdi, qword [rsp+0x150]
  │││││││   0x0000d795      call  method.core::ptr::drop_in_place_std::io::error::Error_.h6385d8574b65cfa7
  ────────< 0x0000d79a      jmp   0xdda0
  │││││││   0x0000d79f      call  qword [method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b] ; [0x73ab0:8]=0x9dd0 method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b
  │││││││   0x0000d7a5      ud2
  ────────< 0x0000d7a7      jmp   0xd7b1
  ││││││└─> 0x0000d7a9      mov   r13, rax
  ││││││┌─< 0x0000d7ac      jmp   0xddb2
  ────────> 0x0000d7b1      mov   r13, rax
  ────────< 0x0000d7b4      jmp   0xdda0
  │││││││   0x0000d7b9      mov   r13, rax
  │││││││   0x0000d7bc      mov   eax, 0x0c                            ; 0xc
  │││││││   0x0000d7c1      mov   qword [rsp+0x08], rax
  │││││││   0x0000d7c6      mov   qword [rsp+0xa8], rax
  ────────< 0x0000d7ce      jmp   0xdd4f
  │││││││   0x0000d7d3      mov   r13, rax
  │││││││   0x0000d7d6      mov   eax, 0x0c                            ; 0xc
  │││││││   0x0000d7db      mov   qword [rsp+0xa8], rax
  ────────< 0x0000d7e3      jmp   0xdd64
  │││││││   0x0000d7e8      mov   r13, rax
  ────────< 0x0000d7eb      jmp   0xdd76
  └───────> 0x0000d7f0      mov   r13, rax
  ┌───────< 0x0000d7f3      jmp   0xdd8b
  │││││││   0x0000d7f8      mov   r13, rax
  │││││││   0x0000d7fb      mov   eax, 0x0c                            ; 0xc
  │││││││   0x0000d800      mov   qword [rsp+0x138], rax
  │││││││   0x0000d808      mov   qword [rsp+0x08], rax
  │││││││   0x0000d80d      mov   qword [rsp+0xa8], rax
  │││││││   0x0000d815      mov   qword [rsp+0x140], rax
  ────────< 0x0000d81d      jmp   0xdd3a
  │││││││   0x0000d822      mov   r13, rax
  │││││││   0x0000d825      mov   rdi, qword [rsp+0xd0]
  │││││││   0x0000d82d      mov   rsi, qword [rsp+0xd8]
  │││││││   0x0000d835      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  ────────< 0x0000d83a      jmp   0xd957
  │││││││   0x0000d83f      mov   r13, rax
  │││││││   0x0000d842      mov   rdi, qword [rsp+0x30]
  │││││││   0x0000d847      mov   rsi, qword [rsp+0x38]
  ────────< 0x0000d84c      jmp   0xd85c
  │││││││   0x0000d84e      mov   r13, rax
  │││││││   0x0000d851      mov   rdi, qword [rsp+0x150]
  │││││││   0x0000d859      mov   rsi, r15
  ────────> 0x0000d85c      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000d861      mov   rdi, rbx
  │││││││   0x0000d864      mov   rsi, r14
  │││││││   0x0000d867      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000d86c      xor   ebx, ebx
  │││││││   0x0000d86e      mov   rbp, qword [rsp+0x10]
  ────────< 0x0000d873      jmp   0xd9f6
  │││││││   0x0000d878      mov   r13, rax
  │││││││   0x0000d87b      mov   rdi, qword [rsp+0x30]
  │││││││   0x0000d880      mov   rsi, qword [rsp+0x38]
  │││││││   0x0000d885      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000d88a      mov   rdi, qword [rsp+0x150]
  │││││││   0x0000d892      mov   rsi, r15
  ────────< 0x0000d895      jmp   0xd9ef
  │││││││   0x0000d89a      mov   r13, rax
  │││││││   0x0000d89d      mov   rbp, qword [rsp+0x10]
  │││││││   0x0000d8a2      mov   r12, qword [rsp]
  ────────< 0x0000d8a6      jmp   0xdbe2
  │││││││   0x0000d8ab      mov   r13, rax
  │││││││   0x0000d8ae      lea   rdi, qword [rsp+0x30]
  │││││││   0x0000d8b3      call  method.core::ptr::drop_in_place_alloc::vec::into_iter::IntoIter_u8__.h4759b3dfa07a6b3e
  │││││││   0x0000d8b8      xor   ebp, ebp
  │││││││   0x0000d8ba      mov   r14, qword [rsp+0x210]
  ────────< 0x0000d8c2      jmp   0xdac2
  │││││││   0x0000d8c7      call  qword [method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b] ; [0x73ab0:8]=0x9dd0 method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b
  │││││││   0x0000d8cd      ud2
  │││││││   0x0000d8cf      mov   r13, rax
  │││││││   0x0000d8d2      mov   rdi, qword [rsp+0x150]
  │││││││   0x0000d8da      mov   rsi, qword [rsp+0x158]
  ────────< 0x0000d8e2      jmp   0xd9ef
  ────────< 0x0000d8e7      jmp   0xd9d1
  │││││││   0x0000d8ec      mov   r13, rax
  │││││││   0x0000d8ef      mov   rbp, qword [rsp+0x10]
  ────────< 0x0000d8f4      jmp   0xdbe2
  │││││││   0x0000d8f9      mov   r13, rax
  │││││││   0x0000d8fc      mov   edi, 0x0c                            ; 0xc
  │││││││   0x0000d901      mov   rsi, rbx
  ────────< 0x0000d904      jmp   0xdba4
  │││││││   0x0000d909      mov   r13, rax
  │││││││   0x0000d90c      mov   edi, 0x0c                            ; 0xc
  │││││││   0x0000d911      mov   rsi, rbx
  │││││││   0x0000d914      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  │││││││   0x0000d919      mov   rbp, qword [rsp+0x10]
  ────────< 0x0000d91e      jmp   0xdbf4
  │││││││   0x0000d923      mov   r13, rax
  ────────< 0x0000d926      jmp   0xdc68
  │││││││   0x0000d92b      mov   r13, rax
  │││││││   0x0000d92e      mov   bl, 0x01
  ────────< 0x0000d930      jmp   0xdcce
  │││││││   0x0000d935      mov   r13, rax
  │││││││   0x0000d938      mov   bl, 0x01
  │││││││   0x0000d93a      mov   bpl, 0x01
  ────────< 0x0000d93d      jmp   0xdcb4
  │││││││   0x0000d942      mov   r13, rax
  │││││││   0x0000d945      mov   bl, 0x01
  ────────< 0x0000d947      jmp   0xd9f6
  │││││││   0x0000d94c      mov   r13, rax
  │││││││   0x0000d94f      mov   r15, qword [rsp+0x128]
  ────────> 0x0000d957      mov   rdi, rbx
  │││││││   0x0000d95a      mov   rsi, r14
  │││││││   0x0000d95d      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000d962      mov   rdi, qword [rsp+0x120]
  │││││││   0x0000d96a      mov   rsi, r15
  │││││││   0x0000d96d      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000d972      mov   bl, 0x01
  │││││││   0x0000d974      mov   rbp, qword [rsp+0x10]
  ────────< 0x0000d979      jmp   0xd9f6
  │││││││   0x0000d97b      mov   r13, rax
  │││││││   0x0000d97e      lea   rdi, qword [rsp+0x30]
  │││││││   0x0000d983      call  method.core::ptr::drop_in_place_alloc::vec::Vec_alloc::vec::Vec_u8___.h9fb5b21b39a3d25e
  │││││││   0x0000d988      mov   r12, qword [rsp]
  ────────< 0x0000d98c      jmp   0xdbf4
  │││││││   0x0000d991      mov   r13, rax
  │││││││   0x0000d994      lea   rdi, qword [rsp+0x30]
  │││││││   0x0000d999      call  method.core::ptr::drop_in_place_alloc::vec::Vec_alloc::vec::Vec_u8___.h9fb5b21b39a3d25e
  ────────< 0x0000d99e      jmp   0xdba9
  │││││││   0x0000d9a3      mov   r13, rax
  ────────< 0x0000d9a6      jmp   0xdb8f
  │││││││   0x0000d9ab      mov   r13, rax
  │││││││   0x0000d9ae      mov   r12, qword [rsp]
  ────────< 0x0000d9b2      jmp   0xdbf4
  ────────< 0x0000d9b7      jmp   0xd9c9
  │││││││   0x0000d9b9      mov   r13, rax
  │││││││   0x0000d9bc      mov   rdi, r12
  │││││││   0x0000d9bf      mov   rsi, r14
  │││││││   0x0000d9c2      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────< 0x0000d9c7      jmp   0xda43
  ────────> 0x0000d9c9      mov   r13, rax
  ────────< 0x0000d9cc      jmp   0xdba9
  ────────> 0x0000d9d1      mov   r13, rax
  │││││││   0x0000d9d4      mov   rdi, qword [rsp+0x1c0]
  │││││││   0x0000d9dc      mov   rsi, qword [rsp+0x1c8]
  ────────< 0x0000d9e4      jmp   0xd9ef
  │││││││   0x0000d9e6      mov   r13, rax
  │││││││   0x0000d9e9      mov   rdi, rbx
  │││││││   0x0000d9ec      mov   rsi, r14
  ────────> 0x0000d9ef      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000d9f4      xor   ebx, ebx
  ────────> 0x0000d9f6      mov   r12, qword [rsp]
  ────────< 0x0000d9fa      jmp   0xdc0b
  ────────< 0x0000d9ff      jmp   0xdcfe
  │││││││   0x0000da04      mov   r13, rax
  ────────< 0x0000da07      jmp   0xda70
  │││││││   0x0000da09      mov   r13, rax
  │││││││   0x0000da0c      mov   rdi, qword [rsp+0x1c0]
  │││││││   0x0000da14      mov   rsi, qword [rsp+0x1c8]
  │││││││   0x0000da1c      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────< 0x0000da21      jmp   0xdd01
  │││││││   0x0000da26      mov   r13, rax
  ────────< 0x0000da29      jmp   0xdaa2
  │││││││   0x0000da2b      mov   r13, rax
  │││││││   0x0000da2e      mov   r15b, 0x01
  │││││││   0x0000da31      mov   bpl, 0x01
  │││││││   0x0000da34      mov   bl, 0x01
  ────────< 0x0000da36      jmp   0xdc8f
  ────────< 0x0000da3b      jmp   0xdcfe
  │││││││   0x0000da40      mov   r13, rax
  ────────> 0x0000da43      mov   rdi, rbx
  │││││││   0x0000da46      call  method.alloc::alloc::box_free.h4b1c101623f1f614
  ────────< 0x0000da4b      jmp   0xdba9
  │││││││   0x0000da50      mov   r13, rax
  ────────< 0x0000da53      jmp   0xdb72
  │││││││   0x0000da58      mov   r13, rax
  │││││││   0x0000da5b      mov   rdi, qword [rsp+0x1c0]
  │││││││   0x0000da63      mov   rsi, qword [rsp+0x1c8]
  │││││││   0x0000da6b      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000da70      mov   rdi, qword [rsp+0x120]
  │││││││   0x0000da78      mov   rsi, qword [rsp+0x128]
  │││││││   0x0000da80      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u16__.h530fcb47bcf65be4
  ────────< 0x0000da85      jmp   0xdd01
  │││││││   0x0000da8a      mov   r13, rax
  │││││││   0x0000da8d      mov   rdi, qword [rsp+0x120]
  │││││││   0x0000da95      mov   rsi, qword [rsp+0x128]
  │││││││   0x0000da9d      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u16__.h530fcb47bcf65be4
  ────────> 0x0000daa2      mov   rdi, qword [rsp+0xd0]
  │││││││   0x0000daaa      mov   rsi, qword [rsp+0xd8]
  │││││││   0x0000dab2      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u16__.h530fcb47bcf65be4
  ────────< 0x0000dab7      jmp   0xdd01
  │││││││   0x0000dabc      mov   r13, rax
  │││││││   0x0000dabf      mov   bpl, 0x01
  ────────> 0x0000dac2      mov   rdi, qword [rsp+0xd0]
  │││││││   0x0000daca      mov   rsi, qword [rsp+0xd8]
  │││││││   0x0000dad2      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000dad7      xor   r15d, r15d
  │││││││   0x0000dada      mov   qword [rsp+0xf8], r14
  │││││││   0x0000dae2      mov   qword [rsp+0x138], rbx
  │││││││   0x0000daea      mov   rax, qword [rsp+0x118]
  │││││││   0x0000daf2      mov   qword [rsp+0x108], rax
  │││││││   0x0000dafa      mov   rax, qword [rsp+0xf0]
  │││││││   0x0000db02      mov   qword [rsp+0x110], rax
  │││││││   0x0000db0a      mov   rax, qword [rsp+0x10]
  │││││││   0x0000db0f      mov   qword [rsp+0xa8], rax
  │││││││   0x0000db17      mov   rax, qword [rsp+0x08]
  │││││││   0x0000db1c      mov   qword [rsp+0x140], rax
  │││││││   0x0000db24      mov   rax, qword [rsp+0xa0]
  │││││││   0x0000db2c      mov   qword [rsp+0x1b8], rax
  │││││││   0x0000db34      mov   rax, qword [rsp+0x230]
  │││││││   0x0000db3c      mov   qword [rsp+0x100], rax
  │││││││   0x0000db44      mov   rax, qword [rsp+0x208]
  │││││││   0x0000db4c      mov   qword [rsp+0xb0], rax
  │││││││   0x0000db54      xor   ebx, ebx
  │││││││   0x0000db56      mov   r14, qword [rsp]
  ────────< 0x0000db5a      jmp   0xdc75
  │││││││   0x0000db5f      mov   r13, rax
  ────────< 0x0000db62      jmp   0xdbb9
  │││││││   0x0000db64      mov   r13, rax
  │││││││   0x0000db67      mov   rdi, r15
  │││││││   0x0000db6a      mov   rsi, r14
  │││││││   0x0000db6d      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000db72      mov   rdi, rbx
  │││││││   0x0000db75      call  method.alloc::alloc::box_free.h4b1c101623f1f614
  ────────< 0x0000db7a      jmp   0xdbf4
  │││││││   0x0000db7c      mov   r13, rax
  │││││││   0x0000db7f      mov   rdi, qword [rsp+0xa0]
  │││││││   0x0000db87      mov   rsi, r14
  │││││││   0x0000db8a      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000db8f      mov   rbp, qword [rsp+0x10]
  │││││││   0x0000db94      mov   r12, qword [rsp]
  ────────< 0x0000db98      jmp   0xdbf4
  │││││││   0x0000db9a      mov   r13, rax
  │││││││   0x0000db9d      mov   rdi, qword [rsp]
  │││││││   0x0000dba1      mov   rsi, r14
  ────────> 0x0000dba4      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000dba9      mov   rdi, rbp
  │││││││   0x0000dbac      mov   rsi, qword [rsp+0xf0]
  │││││││   0x0000dbb4      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000dbb9      xor   ebp, ebp
  ────────< 0x0000dbbb      jmp   0xdc32
  ────────< 0x0000dbbd      jmp   0xdbbf
  ────────> 0x0000dbbf      mov   r13, rax
  ────────< 0x0000dbc2      jmp   0xdc53
  │││││││   0x0000dbc7      mov   r13, rax
  ────────< 0x0000dbca      jmp   0xddd7
  ────────< 0x0000dbcf      jmp   0xdcfe
  │││││││   0x0000dbd4      mov   r13, rax
  │││││││   0x0000dbd7      mov   rdi, rbx
  │││││││   0x0000dbda      mov   rsi, r15
  │││││││   0x0000dbdd      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000dbe2      mov   rdi, qword [rsp+0x08]
  │││││││   0x0000dbe7      mov   rsi, qword [rsp+0xa0]
  │││││││   0x0000dbef      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000dbf4      mov   rdi, qword [rsp+0xd0]
  │││││││   0x0000dbfc      mov   rsi, qword [rsp+0xd8]
  │││││││   0x0000dc04      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000dc09      mov   bl, 0x01
  ────────> 0x0000dc0b      mov   rdi, r12
  │││││││   0x0000dc0e      mov   rsi, qword [rsp+0x118]
  │││││││   0x0000dc16      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  │││││││   0x0000dc1b      mov   rdi, rbp
  │││││││   0x0000dc1e      mov   rsi, qword [rsp+0xf0]
  │││││││   0x0000dc26      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  │││││││   0x0000dc2b      mov   bpl, 0x01
  │││││││   0x0000dc2e      test  bl, bl
  ────────< 0x0000dc30      jnz   0xdc49
  ────────> 0x0000dc32      mov   rdi, qword [rsp+0x18]
  │││││││   0x0000dc37      mov   rsi, qword [rsp+0x20]
  │││││││   0x0000dc3c      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000dc41      test  bpl, bpl
  ────────< 0x0000dc44      jz    0xdc53
  │││││││   0x0000dc46      mov   bpl, 0x01
  ────────> 0x0000dc49      xor   r15d, r15d
  │││││││   0x0000dc4c      mov   r14, qword [rsp+0x08]
  ────────< 0x0000dc51      jmp   0xdc73
  ────────> 0x0000dc53      mov   rdi, qword [rsp+0x240]
  │││││││   0x0000dc5b      mov   rsi, qword [rsp+0x248]
  │││││││   0x0000dc63      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  ────────> 0x0000dc68      mov   r15b, 0x01
  │││││││   0x0000dc6b      mov   r14, qword [rsp+0x08]
  │││││││   0x0000dc70      mov   bpl, 0x01
  ────────> 0x0000dc73      mov   bl, 0x01
  ────────> 0x0000dc75      mov   rdi, qword [rsp+0x298]
  │││││││   0x0000dc7d      mov   rsi, qword [rsp+0x2a0]
  │││││││   0x0000dc85      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000dc8a      mov   qword [rsp+0x08], r14
  ────────> 0x0000dc8f      mov   rdi, qword [rsp+0x260]
  │││││││   0x0000dc97      mov   rsi, qword [rsp+0x268]
  │││││││   0x0000dc9f      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000dca4      test  r15b, r15b
  ────────< 0x0000dca7      jnz   0xdcb4
  │││││││   0x0000dca9      test  bpl, bpl
  ────────< 0x0000dcac      jnz   0xdcce
  ────────> 0x0000dcae      test  bl, bl
  ────────< 0x0000dcb0      jnz   0xdce7
  ────────< 0x0000dcb2      jmp   0xdd10
  ────────> 0x0000dcb4      mov   rdi, qword [rsp+0x280]
  │││││││   0x0000dcbc      mov   rsi, qword [rsp+0x288]
  │││││││   0x0000dcc4      call  method.core::ptr::drop_in_place_num_bigint::biguint::BigUint_.h783385e39ab968a0
  │││││││   0x0000dcc9      test  bpl, bpl
  ────────< 0x0000dccc      jz    0xdcae
  ────────> 0x0000dcce      mov   rdi, qword [rsp+0x238]
  │││││││   0x0000dcd6      mov   rsi, qword [rsp+0x218]
  │││││││   0x0000dcde      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  │││││││   0x0000dce3      test  bl, bl
  ────────< 0x0000dce5      jz    0xdd10
  ────────> 0x0000dce7      mov   rdi, qword [rsp+0x230]
  │││││││   0x0000dcef      mov   rsi, qword [rsp+0x208]
  │││││││   0x0000dcf7      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────< 0x0000dcfc      jmp   0xdd10
  ────────> 0x0000dcfe      mov   r13, rax
  ────────> 0x0000dd01      mov   rdi, qword [rsp+0x18]
  │││││││   0x0000dd06      mov   rsi, qword [rsp+0x20]
  │││││││   0x0000dd0b      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u16__.h530fcb47bcf65be4
  ────────> 0x0000dd10      mov   rdi, qword [rsp+0xb8]
  │││││││   0x0000dd18      mov   rsi, qword [rsp+0xc0]
  │││││││   0x0000dd20      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  │││││││   0x0000dd25      mov   rdi, qword [rsp+0x100]
  │││││││   0x0000dd2d      mov   rsi, qword [rsp+0xb0]
  │││││││   0x0000dd35      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000dd3a      mov   rdi, qword [rsp+0x140]
  │││││││   0x0000dd42      mov   rsi, qword [rsp+0x1b8]
  │││││││   0x0000dd4a      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000dd4f      mov   rdi, qword [rsp+0x138]
  │││││││   0x0000dd57      mov   rsi, qword [rsp+0xf8]
  │││││││   0x0000dd5f      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000dd64      mov   rdi, qword [rsp+0x08]
  │││││││   0x0000dd69      mov   rsi, qword [rsp+0x108]
  │││││││   0x0000dd71      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000dd76      mov   rdi, qword [rsp+0xa8]
  │││││││   0x0000dd7e      mov   rsi, qword [rsp+0x110]
  │└──────> 0x0000dd86      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  └───────> 0x0000dd8b      mov   rdi, qword [rsp+0x2f0]
    │││││   0x0000dd93      mov   rsi, qword [rsp+0x2f8]
    │││││   0x0000dd9b      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
  ────────> 0x0000dda0      mov   edi, 0x30                            ; '0'
    │││││   0x0000dda5      mov   rsi, qword [rsp+0x228]
    │││││   0x0000ddad      call  method.core::ptr::drop_in_place_alloc::vec::Vec_u8__.h3b39ec891ebeb013
    ││││└─> 0x0000ddb2      mov   rdi, qword [rsp+0x258]
    ││││    0x0000ddba      call  method.core::ptr::drop_in_place_rand::rngs::thread::ThreadRng_.hdfdf87ecd1b0d493
    │└────> 0x0000ddbf      mov   edi, dword [rsp+0x14c]
    │ ││    0x0000ddc6      call  method.core::ptr::drop_in_place_std::fs::File_.h8bfa8e477e27e8f2
    └──└──> 0x0000ddcb      mov   edi, dword [rsp+0x148]
      │     0x0000ddd2      call  method.core::ptr::drop_in_place_std::fs::File_.h8bfa8e477e27e8f2
  ────└───> 0x0000ddd7      lea   rdi, qword [rsp+0x2d0]
            0x0000dddf      call  method.core::ptr::drop_in_place_alloc::vec::Vec_alloc::string::String__.hc10923923fa6fd8a
            0x0000dde4      mov   rdi, r13
            0x0000dde7      call  sym.imp._Unwind_Resume
            0x0000ddec      ud2
            0x0000ddee      call  qword [method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b] ; [0x73ab0:8]=0x9dd0 method.core::panicking::panic_cannot_unwind.h679f637c7ecde18b
            0x0000ddf4      ud2
