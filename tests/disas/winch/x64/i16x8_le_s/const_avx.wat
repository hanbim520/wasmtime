;;! target = "x86_64"
;;! test = "winch"
;;! flags = [ "-Ccranelift-has-avx" ]

(module
    (func (result v128)
        (i16x8.le_s (v128.const i16x8 7 6 5 4 3 2 1 0) (v128.const i16x8 0 1 2 3 4 5 6 7))
    )
)
;; wasm[0]::function[0]:
;;       pushq   %rbp
;;       movq    %rsp, %rbp
;;       movq    8(%rdi), %r11
;;       movq    0x10(%r11), %r11
;;       addq    $0x10, %r11
;;       cmpq    %rsp, %r11
;;       ja      0x54
;;   1c: movq    %rdi, %r14
;;       subq    $0x10, %rsp
;;       movq    %rdi, 8(%rsp)
;;       movq    %rsi, (%rsp)
;;       movdqu  0x29(%rip), %xmm0
;;       movdqu  0x31(%rip), %xmm1
;;       vpminsw %xmm0, %xmm1, %xmm0
;;       vpcmpeqw %xmm0, %xmm1, %xmm1
;;       movdqa  %xmm1, %xmm0
;;       addq    $0x10, %rsp
;;       popq    %rbp
;;       retq
;;   54: ud2
;;   56: addb    %al, (%rax)
;;   58: addb    %al, (%rax)
;;   5a: addb    %al, (%rax)
;;   5c: addb    %al, (%rax)
;;   5e: addb    %al, (%rax)
;;   60: addb    %al, (%rax)
;;   62: addl    %eax, (%rax)
;;   64: addb    (%rax), %al
;;   66: addl    (%rax), %eax
;;   68: addb    $0, %al
;;   6a: addl    $0x7000600, %eax
;;   6f: addb    %al, (%rdi)
;;   71: addb    %al, (%rsi)
;;   73: addb    %al, 0x3000400(%rip)
;;   79: addb    %al, (%rdx)
;;   7b: addb    %al, (%rcx)
;;   7d: addb    %al, (%rax)
