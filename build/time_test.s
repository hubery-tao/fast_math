	.file	"time_test.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1525:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1525:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0, @function
_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0:
.LFB8718:
	.cfi_startproc
	movq	-24(%rsi), %rdx
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	.cfi_endproc
.LFE8718:
	.size	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0, .-_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"SIMPLE_MATH::sum"
.LC10:
	.string	"result: "
.LC11:
	.string	"tsc spent: "
.LC12:
	.string	"FAST_MATH::sum"
.LC13:
	.string	"SIMPLE_MATH::mean"
.LC14:
	.string	"FAST_MATH::mean"
.LC15:
	.string	"SIMPLE_MATH::min"
.LC16:
	.string	"FAST_MATH::min"
.LC17:
	.string	"SIMPLE_MATH::imin"
.LC19:
	.string	"FAST_MATH::imin"
.LC20:
	.string	"SIMPLE_MATH::max"
.LC21:
	.string	"FAST_MATH::max"
.LC22:
	.string	"SIMPLE_MATH::imax"
.LC23:
	.string	"FAST_MATH::imax"
.LC24:
	.string	"SIMPLE_MATH::var"
.LC25:
	.string	"FAST_MATH::var"
.LC26:
	.string	"SIMPLE_MATH::std"
.LC27:
	.string	"FAST_MATH::std"
.LC28:
	.string	"SIMPLE_MATH::covar"
.LC29:
	.string	"FAST_MATH::covar"
.LC30:
	.string	"SIMPLE_MATH::corr"
.LC31:
	.string	"FAST_MATH::corr"
.LC32:
	.string	"SIMPLE_MATH::skew"
.LC33:
	.string	"FAST_MATH::skew"
.LC34:
	.string	"SIMPLE_MATH::kurt"
.LC35:
	.string	"FAST_MATH::kurt"
.LC37:
	.string	"SIMPLE_MATH::vec_2pow"
.LC45:
	.string	"FAST_MATH::vec_2pow"
.LC46:
	.string	"SIMPLE_MATH::vec_log2"
.LC54:
	.string	"FAST_MATH::vec_log2"
.LC56:
	.string	"SIMPLE_MATH::ema"
.LC58:
	.string	"FAST_MATH::ema"
.LC59:
	.string	"SIMPLE_MATH::beta"
.LC60:
	.string	"FAST_MATH::beta"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB78:
	.section	.text.startup,"ax",@progbits
.LHOTB78:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8105:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8105
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	pushq	-8(%r10)
	xorl	%edi, %edi
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$384, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	call	time
	movl	%eax, %edi
	call	srand
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edi, %edi
	leaq	-176(%rbp), %rdx
	movl	$128, %esi
	vmovdqu	%xmm0, -168(%rbp)
	vmovdqu	%xmm0, -152(%rbp)
	vmovdqu	%xmm0, -136(%rbp)
	vmovdqu	%xmm0, -120(%rbp)
	vmovdqu	%xmm0, -104(%rbp)
	vmovdqu	%xmm0, -88(%rbp)
	vmovdqu	%xmm0, -72(%rbp)
	movq	$0, -56(%rbp)
	movq	$16777216, -176(%rbp)
	call	sched_setaffinity
	leaq	-288(%rbp), %rsi
	movl	$_ZSt3cin, %edi
.LEHB0:
	call	_ZNSi10_M_extractImEERSiRT_
	movq	-288(%rbp), %r13
	movq	%r13, %rax
	shrq	$60, %rax
	jne	.L5
	leaq	0(,%r13,8), %r12
	movq	%r12, %rdi
	call	_Znam
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_Znam
	movq	%rax, -304(%rbp)
	movq	%rax, %r14
	xorl	%r12d, %r12d
	testq	%r13, %r13
	je	.L7
.L6:
	call	rand
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	vmulsd	.LC6(%rip), %xmm0, %xmm0
	vdivsd	.LC7(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%r12,8)
	call	rand
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	movq	-288(%rbp), %r13
	vmulsd	.LC6(%rip), %xmm0, %xmm0
	vdivsd	.LC7(%rip), %xmm0, %xmm0
	vsubsd	.LC8(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%r12,8)
	incq	%r12
	cmpq	%r12, %r13
	ja	.L6
	movq	%r13, %rax
	shrq	$60, %rax
	jne	.L5
.L7:
	leaq	0(,%r13,8), %rdi
	call	_Znam
	leaq	-272(%rbp), %rdx
	xorl	%esi, %esi
	movl	$20, %edi
	movq	%rax, %r12
	call	_ZNSs4_Rep9_S_createEmmRKSaIcE
.LEHE0:
	vmovdqa	.LC61(%rip), %xmm0
	leaq	24(%rax), %rdx
	vmovdqu	%xmm0, 24(%rax)
	movl	$1027423549, 16(%rdx)
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rax
	jne	.L871
.L8:
	movl	$_ZSt4cout, %edi
	movq	%rdx, -280(%rbp)
.LEHB1:
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L414
	vxorpd	%xmm7, %xmm7, %xmm7
	movq	%rbx, %rax
	leaq	(%rbx,%rcx,8), %rdx
	vmovsd	%xmm7, -296(%rbp)
	vmovsd	%xmm7, %xmm7, %xmm1
.L11:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L10
	vaddsd	%xmm0, %xmm1, %xmm1
.L10:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L11
	vmovq	%xmm1, %r13
.L9:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rax
	andq	$-8, %rax
	je	.L12
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L12
	movq	%rbx, %rax
.L748:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L748
.L12:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r13
	movq	%r15, %rax
	andq	$-8, %rax
	je	.L15
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L415
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	vmovapd	%zmm0, %zmm5
	movq	%rbx, %rax
	vxorpd	%xmm3, %xmm3, %xmm3
.L17:
	vmovupd	(%rax), %zmm2
	addq	$64, %rax
	vandpd	%zmm5, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	cmpq	%rax, %rdx
	jne	.L17
.L16:
	andl	$7, %r15d
	movl	$1, %edx
	shlx	%r15d, %edx, %edx
	decl	%edx
	kmovb	%edx, %k7
	vmovupd	(%rax), %zmm2{%k7}{z}
	vandpd	%zmm0, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	vextractf64x4	$0x1, %zmm3, %ymm0
	vaddpd	%ymm3, %ymm0, %ymm0
	vextractf64x2	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm0
	vhaddpd	%xmm0, %xmm0, %xmm7
	vmovq	%xmm7, %r15
	vzeroupper
.L18:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC12, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rsi
	leaq	(%rbx,%rsi,8), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r15
	cmpq	%rcx, %rbx
	je	.L417
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
.L24:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L872
	vaddsd	%xmm0, %xmm1, %xmm1
.L23:
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L24
.L21:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rsi, %xmm7, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm7
	vmovq	%xmm7, %r13
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC13, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rax
	andq	$-8, %rax
	je	.L25
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L25
	movq	%rbx, %rax
.L749:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L749
.L25:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r13
	movq	%r15, %rax
	movq	%r15, %rsi
	andq	$-8, %rax
	je	.L28
	leaq	(%rbx,%rax,8), %rdi
	cmpq	%rdi, %rbx
	je	.L419
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	vmovapd	%zmm0, %zmm5
	movq	%rbx, %rcx
	vxorpd	%xmm3, %xmm3, %xmm3
.L30:
	vmovupd	(%rcx), %zmm2
	addq	$64, %rcx
	vandpd	%zmm5, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kmovb	%k1, %edx
	knotb	%k1, %k1
	popcntl	%edx, %edx
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	subq	%rdx, %rsi
	cmpq	%rcx, %rdi
	jne	.L30
.L29:
	andl	$7, %r15d
	movl	$1, %eax
	shlx	%r15d, %eax, %eax
	decl	%eax
	kmovb	%eax, %k7
	vmovupd	(%rcx), %zmm2{%k7}{z}
	vandpd	%zmm0, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k0{%k1}
	kmovb	%k0, %edx
	movl	%edx, %eax
	notl	%eax
	kmovb	%eax, %k1
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	popcntl	%edx, %edx
	subq	%rdx, %rsi
	vextractf64x4	$0x1, %zmm3, %ymm1
	vaddpd	%ymm3, %ymm1, %ymm1
	vextractf64x2	$0x1, %ymm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vhaddpd	%xmm0, %xmm0, %xmm0
	vzeroupper
.L31:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rsi, %xmm7, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %r15
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC14, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rax
	leaq	(%rbx,%rax,8), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r14
	cmpq	%rcx, %rbx
	je	.L421
	vmovsd	.LC1(%rip), %xmm7
	movq	%rbx, %rax
	vmovsd	%xmm7, -368(%rbp)
	vmovsd	%xmm7, %xmm7, %xmm1
.L38:
	vmovsd	(%rax), %xmm0
	addq	$8, %rax
	vminsd	%xmm1, %xmm0, %xmm1
	cmpq	%rcx, %rax
	jne	.L38
	vmovq	%xmm1, %r13
.L35:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC15, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r15
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r15, %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rax
	andq	$-8, %rax
	je	.L39
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L39
	movq	%rbx, %rax
.L750:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L750
.L39:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r14
	movq	%r15, %rax
	andq	$-8, %rax
	je	.L42
	leaq	(%rbx,%rax,8), %rdx
	vbroadcastsd	.LC1(%rip), %zmm0
	movq	%rbx, %rax
	cmpq	%rdx, %rbx
	je	.L43
.L44:
	vmovupd	(%rax), %zmm7
	addq	$64, %rax
	vminpd	%zmm0, %zmm7, %zmm0
	cmpq	%rax, %rdx
	jne	.L44
.L43:
	andl	$7, %r15d
	movl	$1, %edx
	shlx	%r15d, %edx, %edx
	leal	-1(%rdx), %esi
	kmovb	%esi, %k1
	vmovupd	(%rax), %zmm1{%k1}{z}
	vminpd	%zmm0, %zmm1, %zmm0{%k1}
	vextractf64x4	$0x1, %zmm0, %ymm1
	vminpd	%ymm0, %ymm1, %ymm1
	vextractf64x2	$0x1, %ymm1, %xmm0
	vminpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1
	vminpd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %r13
	vzeroupper
.L45:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC16, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r15
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r15, %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	$-1, %rdx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L49
	vmovsd	-368(%rbp), %xmm0
	xorl	%eax, %eax
.L52:
	vmovsd	(%rbx,%rax,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rax, %rdx
	incq	%rax
	cmpq	%rax, %rcx
	jne	.L52
.L49:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	vmovq	%xmm0, %r15
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC17, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r13
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r13, %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	testq	$-128, %r15
	je	.L53
	movq	%r15, %rax
	andq	$-8, %rax
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L53
	movq	%rbx, %rax
.L55:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L55
.L53:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%r15, %rdx
	movq	%rax, %r13
	andq	$-128, %rdx
	jne	.L56
	vmovsd	-368(%rbp), %xmm0
	orq	$-1, %rax
	testq	%r15, %r15
	je	.L58
	movq	%r15, %rcx
	andl	$7, %ecx
	je	.L57
	cmpq	$1, %rcx
	je	.L752
	cmpq	$2, %rcx
	je	.L753
	cmpq	$3, %rcx
	je	.L754
	cmpq	$4, %rcx
	je	.L755
	cmpq	$5, %rcx
	je	.L756
	cmpq	$6, %rcx
	je	.L757
	vmovsd	(%rbx), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	movl	$1, %edx
.L757:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	incq	%rdx
.L756:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	incq	%rdx
.L755:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	incq	%rdx
.L754:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	incq	%rdx
.L753:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	incq	%rdx
.L752:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	incq	%rdx
	cmpq	%rdx, %r15
	je	.L58
.L57:
	vmovsd	(%rbx,%rdx,8), %xmm1
	leaq	1(%rdx), %rcx
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	vmovsd	(%rbx,%rcx,8), %xmm1
	cmova	%rdx, %rax
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rcx, %rax
	addq	$2, %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	leaq	2(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	leaq	3(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	leaq	4(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	leaq	5(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	leaq	6(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm1, %xmm0
	vminsd	%xmm0, %xmm1, %xmm0
	cmova	%rdx, %rax
	leaq	7(%rcx), %rdx
	cmpq	%rdx, %r15
	jne	.L57
.L58:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rax, %xmm7, %xmm0
	vmovq	%xmm0, %r15
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC19, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rax
	leaq	(%rbx,%rax,8), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r14
	cmpq	%rcx, %rbx
	je	.L429
	vmovsd	.LC4(%rip), %xmm7
	movq	%rbx, %rax
	vmovsd	%xmm7, -368(%rbp)
	vmovsd	%xmm7, %xmm7, %xmm1
.L80:
	vmovsd	(%rax), %xmm0
	addq	$8, %rax
	vmaxsd	%xmm1, %xmm0, %xmm1
	cmpq	%rax, %rcx
	jne	.L80
	vmovq	%xmm1, %r13
.L77:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC20, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r15
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r15, %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rax
	andq	$-8, %rax
	je	.L81
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L81
	movq	%rbx, %rax
.L758:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L758
.L81:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r14
	movq	%r15, %rax
	andq	$-8, %rax
	je	.L84
	leaq	(%rbx,%rax,8), %rdx
	vbroadcastsd	.LC4(%rip), %zmm0
	movq	%rbx, %rax
	cmpq	%rdx, %rbx
	je	.L85
.L86:
	vmovupd	(%rax), %zmm7
	addq	$64, %rax
	vmaxpd	%zmm0, %zmm7, %zmm0
	cmpq	%rax, %rdx
	jne	.L86
.L85:
	andl	$7, %r15d
	movl	$1, %edx
	shlx	%r15d, %edx, %edx
	leal	-1(%rdx), %esi
	kmovb	%esi, %k1
	vmovupd	(%rax), %zmm1{%k1}{z}
	vmaxpd	%zmm0, %zmm1, %zmm0{%k1}
	vextractf64x4	$0x1, %zmm0, %ymm1
	vmaxpd	%ymm0, %ymm1, %ymm1
	vextractf64x2	$0x1, %ymm1, %xmm0
	vmaxpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1
	vmaxpd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %r13
	vzeroupper
.L87:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC21, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r15
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r15, %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$-1, %edx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L91
	vmovsd	-368(%rbp), %xmm0
	xorl	%eax, %eax
.L94:
	vmovsd	(%rbx,%rax,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%eax, %edx
	incq	%rax
	cmpq	%rax, %rcx
	jne	.L94
.L91:
	movslq	%edx, %rdx
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	vmovq	%xmm0, %r15
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC22, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r13
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r13, %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r13
	testq	%r13, %r13
	je	.L873
	cmpb	$0, 56(%r13)
	je	.L96
	movzbl	67(%r13), %eax
.L97:
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	-288(%rbp), %r15
	testq	$-128, %r15
	je	.L98
	movq	%r15, %rax
	andq	$-8, %rax
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L98
	movq	%rbx, %rax
.L100:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L100
.L98:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%r15, %rdx
	movq	%rax, %r13
	andq	$-128, %rdx
	jne	.L101
	vmovsd	-368(%rbp), %xmm0
	orl	$-1, %eax
	testq	%r15, %r15
	je	.L103
	movq	%r15, %rcx
	andl	$7, %ecx
	je	.L102
	cmpq	$1, %rcx
	je	.L760
	cmpq	$2, %rcx
	je	.L761
	cmpq	$3, %rcx
	je	.L762
	cmpq	$4, %rcx
	je	.L763
	cmpq	$5, %rcx
	je	.L764
	cmpq	$6, %rcx
	je	.L765
	vmovsd	(%rbx), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	movl	$1, %edx
.L765:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	incq	%rdx
.L764:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	incq	%rdx
.L763:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	incq	%rdx
.L762:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	incq	%rdx
.L761:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	incq	%rdx
.L760:
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	incq	%rdx
	cmpq	%rdx, %r15
	je	.L103
.L102:
	vmovsd	(%rbx,%rdx,8), %xmm1
	leaq	1(%rdx), %rcx
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	vmovsd	(%rbx,%rcx,8), %xmm1
	cmova	%edx, %eax
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%ecx, %eax
	addq	$2, %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	leaq	2(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	leaq	3(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	leaq	4(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	leaq	5(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	leaq	6(%rcx), %rdx
	vmovsd	(%rbx,%rdx,8), %xmm1
	vcomisd	%xmm0, %xmm1
	vmaxsd	%xmm0, %xmm1, %xmm0
	cmova	%edx, %eax
	leaq	7(%rcx), %rdx
	cmpq	%rdx, %r15
	jne	.L102
.L103:
	cltq
	jmp	.L120
.L872:
	decq	%rsi
	jmp	.L23
.L56:
	movq	%r15, %rax
	andq	$-8, %rax
	vmovdqa64	.LC3(%rip), %zmm3
	leaq	(%rbx,%rax,8), %rdx
	vbroadcastsd	.LC1(%rip), %zmm0
	vpbroadcastq	.LC63(%rip), %zmm2
	movq	%rbx, %rax
	vmovdqa64	%zmm3, %zmm1
	cmpq	%rdx, %rbx
	je	.L59
.L60:
	vmovupd	(%rax), %zmm4
	vpaddq	%zmm2, %zmm1, %zmm1
	vcmppd	$1, %zmm0, %zmm4, %k1
	addq	$64, %rax
	vmovdqa64	%zmm1, %zmm3{%k1}
	vmovapd	%zmm4, %zmm0{%k1}
	cmpq	%rax, %rdx
	jne	.L60
.L59:
	andl	$7, %r15d
	movl	$1, %edx
	shlx	%r15d, %edx, %edx
	leal	-1(%rdx), %esi
	kmovb	%esi, %k1
	vmovupd	(%rax), %zmm4{%k1}{z}
	vcmppd	$1, %zmm0, %zmm4, %k1{%k1}
	vmovapd	%zmm4, %zmm0{%k1}
	vpaddq	%zmm2, %zmm1, %zmm3{%k1}
	vunpckhpd	%xmm0, %xmm0, %xmm1
	vcomisd	%xmm1, %xmm0
	vmovapd	%ymm0, %ymm2
	vmovdqa	%ymm3, %ymm4
	ja	.L61
	vmovq	%xmm3, %rax
	vmovsd	%xmm0, %xmm0, %xmm1
.L62:
	vextractf64x2	$0x1, %ymm2, %xmm5
	vcomisd	%xmm5, %xmm1
	jbe	.L63
	vextracti64x2	$0x1, %ymm4, %xmm1
	vmovq	%xmm1, %rax
	vmovsd	%xmm5, %xmm5, %xmm1
.L63:
	vextractf64x2	$0x1, %ymm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm2
	vcomisd	%xmm2, %xmm1
	jbe	.L65
	vextracti64x2	$0x1, %ymm4, %xmm4
	vpextrq	$1, %xmm4, %rax
	vmovsd	%xmm2, %xmm2, %xmm1
.L65:
	vextractf64x4	$0x1, %zmm0, %ymm0
	vcomisd	%xmm0, %xmm1
	jbe	.L67
	vextracti64x4	$0x1, %zmm3, %ymm1
	vmovq	%xmm1, %rax
	vmovsd	%xmm0, %xmm0, %xmm1
.L67:
	vunpckhpd	%xmm0, %xmm0, %xmm2
	vcomisd	%xmm2, %xmm1
	jbe	.L69
	vextracti64x4	$0x1, %zmm3, %ymm1
	vpextrq	$1, %xmm1, %rax
	vmovsd	%xmm2, %xmm2, %xmm1
.L69:
	vextractf64x2	$0x1, %ymm0, %xmm2
	vcomisd	%xmm2, %xmm1
	jbe	.L71
	vextracti64x4	$0x1, %zmm3, %ymm1
	vextracti64x2	$0x1, %ymm1, %xmm1
	vmovq	%xmm1, %rax
	vmovsd	%xmm2, %xmm2, %xmm1
.L71:
	vextractf64x2	$0x1, %ymm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vcomisd	%xmm0, %xmm1
	jbe	.L866
	vextracti64x4	$0x1, %zmm3, %ymm3
	vextracti64x2	$0x1, %ymm3, %xmm0
	vpextrq	$1, %xmm0, %rax
	vzeroupper
	jmp	.L58
.L101:
	movq	%r15, %rax
	andq	$-8, %rax
	vmovdqa64	.LC3(%rip), %zmm3
	leaq	(%rbx,%rax,8), %rdx
	vbroadcastsd	.LC4(%rip), %zmm0
	vpbroadcastq	.LC63(%rip), %zmm2
	movq	%rbx, %rax
	vmovdqa64	%zmm3, %zmm1
	cmpq	%rdx, %rbx
	je	.L104
.L105:
	vmovupd	(%rax), %zmm4
	vpaddq	%zmm2, %zmm1, %zmm1
	vcmppd	$1, %zmm4, %zmm0, %k1
	addq	$64, %rax
	vmovdqa64	%zmm1, %zmm3{%k1}
	vmovapd	%zmm4, %zmm0{%k1}
	cmpq	%rax, %rdx
	jne	.L105
.L104:
	andl	$7, %r15d
	movl	$1, %edx
	shlx	%r15d, %edx, %edx
	leal	-1(%rdx), %esi
	kmovb	%esi, %k1
	vmovupd	(%rax), %zmm4{%k1}{z}
	vcmppd	$1, %zmm4, %zmm0, %k1{%k1}
	vpaddq	%zmm2, %zmm1, %zmm3{%k1}
	vblendmpd	%zmm4, %zmm0, %zmm1{%k1}
	vunpckhpd	%xmm1, %xmm1, %xmm6
	vcomisd	%xmm1, %xmm6
	vmovapd	%ymm1, %ymm4
	vmovsd	%xmm1, %xmm1, %xmm2
	vmovdqa	%ymm3, %ymm5
	vmovq	%xmm3, %rax
	jbe	.L107
	vpextrq	$1, %xmm3, %rax
	vmovsd	%xmm6, %xmm6, %xmm2
.L107:
	vextractf64x2	$0x1, %ymm4, %xmm6
	vcomisd	%xmm2, %xmm6
	jbe	.L108
	vextracti64x2	$0x1, %ymm5, %xmm0
	vmovq	%xmm0, %rax
	vmovsd	%xmm6, %xmm6, %xmm2
.L108:
	vextractf64x2	$0x1, %ymm4, %xmm4
	vunpckhpd	%xmm4, %xmm4, %xmm4
	vcomisd	%xmm2, %xmm4
	jbe	.L110
	vextracti64x2	$0x1, %ymm5, %xmm5
	vpextrq	$1, %xmm5, %rax
	vmovsd	%xmm4, %xmm4, %xmm2
.L110:
	vextractf64x4	$0x1, %zmm1, %ymm1
	vcomisd	%xmm2, %xmm1
	jbe	.L112
	vextracti64x4	$0x1, %zmm3, %ymm0
	vmovq	%xmm0, %rax
	vmovsd	%xmm1, %xmm1, %xmm2
.L112:
	vunpckhpd	%xmm1, %xmm1, %xmm4
	vcomisd	%xmm2, %xmm4
	jbe	.L114
	vextracti64x4	$0x1, %zmm3, %ymm0
	vpextrq	$1, %xmm0, %rax
	vmovsd	%xmm4, %xmm4, %xmm2
.L114:
	vextractf64x2	$0x1, %ymm1, %xmm4
	vcomisd	%xmm2, %xmm4
	jbe	.L116
	vextracti64x4	$0x1, %zmm3, %ymm0
	vextracti64x2	$0x1, %ymm0, %xmm0
	vmovq	%xmm0, %rax
	vmovsd	%xmm4, %xmm4, %xmm2
.L116:
	vextractf64x2	$0x1, %ymm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vcomisd	%xmm2, %xmm1
	jbe	.L867
	vextracti64x4	$0x1, %zmm3, %ymm3
	vextracti64x2	$0x1, %ymm3, %xmm0
	vpextrq	$1, %xmm0, %rax
	vzeroupper
.L120:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rax, %xmm7, %xmm0
	vmovq	%xmm0, %r15
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC23, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rcx
	leaq	(%rbx,%rcx,8), %rsi
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r15
	cmpq	%rsi, %rbx
	je	.L438
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
.L126:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L874
	vaddsd	%xmm0, %xmm1, %xmm1
.L125:
	addq	$8, %rax
	cmpq	%rsi, %rax
	jne	.L126
	movq	%rbx, %rax
	vxorpd	%xmm2, %xmm2, %xmm2
.L128:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L127
	vaddsd	%xmm0, %xmm2, %xmm2
.L127:
	addq	$8, %rax
	cmpq	%rsi, %rax
	jne	.L128
.L123:
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm1, %xmm1, %xmm1
	vcvtusi2sdq	%rcx, %xmm7, %xmm0
	decq	%rcx
	vdivsd	%xmm0, %xmm1, %xmm1
	vcvtusi2sdq	%rcx, %xmm7, %xmm0
	vsubsd	%xmm1, %xmm2, %xmm2
	vdivsd	%xmm0, %xmm2, %xmm7
	vmovq	%xmm7, %r13
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC24, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rax
	andq	$-8, %rax
	je	.L129
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L129
	movq	%rbx, %rax
.L766:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L766
	cmpq	%rdx, %rbx
	je	.L129
	movq	%rbx, %rax
.L767:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L767
.L129:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%r15, %rdx
	movq	%rax, %r13
	movq	%r15, %rax
	andq	$-8, %rdx
	je	.L134
	leaq	(%rbx,%rdx,8), %rdx
	cmpq	%rdx, %rbx
	je	.L441
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	vmovapd	%zmm0, %zmm5
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
.L136:
	vmovupd	(%rsi), %zmm2
	addq	$64, %rsi
	vandpd	%zmm5, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kmovb	%k1, %ecx
	knotb	%k1, %k1
	popcntl	%ecx, %ecx
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	subq	%rcx, %rdi
	cmpq	%rsi, %rdx
	jne	.L136
.L135:
	andl	$7, %r15d
	movl	$1, %eax
	shlx	%r15d, %eax, %eax
	decl	%eax
	kmovb	%eax, %k2
	vmovupd	(%rsi), %zmm2{%k2}{z}
	xorl	%esi, %esi
	vandpd	%zmm0, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vmovapd	%zmm3, %zmm4
	vmovapd	%zmm0, %zmm6
	vptestmq	%zmm1, %zmm2, %k7{%k1}
	kmovb	%k7, %eax
	movl	%eax, %ecx
	notl	%ecx
	kmovb	%ecx, %k1
	vaddpd	%zmm2, %zmm3, %zmm4{%k1}
	popcntl	%eax, %esi
	movq	%rdi, %rax
	vextractf64x4	$0x1, %zmm4, %ymm2
	vaddpd	%ymm4, %ymm2, %ymm2
	subq	%rsi, %rax
	movq	%rbx, %rcx
	vextractf64x2	$0x1, %ymm2, %xmm3
	vaddpd	%xmm2, %xmm3, %xmm3
	vxorpd	%xmm4, %xmm4, %xmm4
	vhaddpd	%xmm3, %xmm3, %xmm3
	cmpq	%rdx, %rbx
	je	.L138
.L137:
	vmovupd	(%rcx), %zmm2
	addq	$64, %rcx
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm6, %zmm2, %zmm5
	vpcmpeqq	%zmm0, %zmm5, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm4, %zmm4{%k1}
	cmpq	%rcx, %rdx
	jne	.L137
.L138:
	vmovupd	(%rcx), %zmm2{%k2}{z}
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm0, %zmm2, %zmm5
	vpcmpeqq	%zmm0, %zmm5, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm2, %zmm4, %zmm4{%k1}
	vextractf64x4	$0x1, %zmm4, %ymm0
	vaddpd	%ymm4, %ymm0, %ymm0
	vextractf64x2	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm1
	vzeroupper
.L139:
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm3, %xmm3, %xmm3
	vcvtusi2sdq	%rax, %xmm7, %xmm0
	decq	%rax
	vdivsd	%xmm0, %xmm3, %xmm3
	vcvtusi2sdq	%rax, %xmm7, %xmm0
	vsubsd	%xmm3, %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm7
	vmovq	%xmm7, %r15
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC25, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r14
	leaq	(%rbx,%r14,8), %r13
	movq	%r14, %rdx
	cmpq	%r13, %rbx
	je	.L444
	movq	%rbx, %rax
	vxorpd	%xmm2, %xmm2, %xmm2
.L148:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L875
	vaddsd	%xmm0, %xmm2, %xmm2
.L147:
	addq	$8, %rax
	cmpq	%rax, %r13
	jne	.L148
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
.L150:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L149
	vaddsd	%xmm0, %xmm1, %xmm1
.L149:
	addq	$8, %rax
	cmpq	%rax, %r13
	jne	.L150
.L145:
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm2, %xmm2, %xmm2
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	decq	%rdx
	vdivsd	%xmm0, %xmm2, %xmm2
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	vmovsd	-296(%rbp), %xmm7
	vsubsd	%xmm2, %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vucomisd	%xmm0, %xmm7
	ja	.L876
.L151:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r15
	cmpq	%r13, %rbx
	je	.L445
	movq	%rbx, %rax
	vxorpd	%xmm2, %xmm2, %xmm2
.L155:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L877
	vaddsd	%xmm0, %xmm2, %xmm2
.L154:
	addq	$8, %rax
	cmpq	%r13, %rax
	jne	.L155
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
.L157:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L156
	vaddsd	%xmm0, %xmm1, %xmm1
.L156:
	addq	$8, %rax
	cmpq	%r13, %rax
	jne	.L157
.L152:
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm2, %xmm2, %xmm2
	vcvtusi2sdq	%r14, %xmm7, %xmm0
	decq	%r14
	vdivsd	%xmm0, %xmm2, %xmm2
	vcvtusi2sdq	%r14, %xmm7, %xmm0
	vmovsd	-296(%rbp), %xmm7
	vsubsd	%xmm2, %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vucomisd	%xmm0, %xmm7
	ja	.L828
	vsqrtsd	%xmm0, %xmm0, %xmm7
	vmovq	%xmm7, %r13
.L160:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC26, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rax
	movq	%r15, %rdx
	andq	$-8, %rax
	je	.L161
	leaq	(%rbx,%rax,8), %rcx
	cmpq	%rcx, %rbx
	je	.L446
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	vmovapd	%zmm0, %zmm5
	movq	%rbx, %rdi
	vxorpd	%xmm3, %xmm3, %xmm3
.L163:
	vmovupd	(%rdi), %zmm2
	addq	$64, %rdi
	vandpd	%zmm5, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kmovb	%k1, %esi
	knotb	%k1, %k1
	popcntl	%esi, %esi
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	subq	%rsi, %rdx
	cmpq	%rdi, %rcx
	jne	.L163
.L162:
	movl	%r15d, %esi
	andl	$7, %esi
	movl	$1, %eax
	shlx	%esi, %eax, %eax
	decl	%eax
	kmovb	%eax, %k2
	vmovupd	(%rdi), %zmm2{%k2}{z}
	vmovapd	%zmm0, %zmm6
	vandpd	%zmm0, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vmovapd	%zmm3, %zmm4
	vptestmq	%zmm1, %zmm2, %k0{%k1}
	kmovb	%k0, %esi
	movl	%esi, %eax
	notl	%eax
	kmovb	%eax, %k1
	vaddpd	%zmm2, %zmm3, %zmm4{%k1}
	popcntl	%esi, %esi
	movq	%rbx, %rax
	vextractf64x4	$0x1, %zmm4, %ymm2
	vaddpd	%ymm4, %ymm2, %ymm2
	subq	%rsi, %rdx
	vxorpd	%xmm4, %xmm4, %xmm4
	vextractf64x2	$0x1, %ymm2, %xmm3
	vaddpd	%xmm2, %xmm3, %xmm3
	vhaddpd	%xmm3, %xmm3, %xmm3
	cmpq	%rcx, %rbx
	je	.L165
.L164:
	vmovupd	(%rax), %zmm2
	addq	$64, %rax
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm6, %zmm2, %zmm5
	vpcmpeqq	%zmm0, %zmm5, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm4, %zmm4{%k1}
	cmpq	%rax, %rcx
	jne	.L164
.L165:
	vmovupd	(%rax), %zmm2{%k2}{z}
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm0, %zmm2, %zmm5
	vpcmpeqq	%zmm0, %zmm5, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm2, %zmm4, %zmm4{%k1}
	vextractf64x4	$0x1, %zmm4, %ymm0
	vaddpd	%ymm4, %ymm0, %ymm0
	vextractf64x2	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm1
.L166:
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm3, %xmm3, %xmm3
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	decq	%rdx
	vdivsd	%xmm0, %xmm3, %xmm3
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	vmovsd	-296(%rbp), %xmm7
	vsubsd	%xmm3, %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vucomisd	%xmm0, %xmm7
	ja	.L878
.L172:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%r15, %rdx
	movq	%rax, %r13
	movq	%r15, %rax
	andq	$-8, %rdx
	je	.L173
	leaq	(%rbx,%rdx,8), %rdx
	cmpq	%rdx, %rbx
	je	.L449
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	vmovapd	%zmm0, %zmm5
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
.L175:
	vmovupd	(%rsi), %zmm2
	addq	$64, %rsi
	vandpd	%zmm5, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kmovb	%k1, %ecx
	knotb	%k1, %k1
	popcntl	%ecx, %ecx
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	subq	%rcx, %rdi
	cmpq	%rsi, %rdx
	jne	.L175
.L174:
	andl	$7, %r15d
	movl	$1, %eax
	shlx	%r15d, %eax, %eax
	decl	%eax
	kmovb	%eax, %k2
	vmovupd	(%rsi), %zmm2{%k2}{z}
	xorl	%esi, %esi
	vandpd	%zmm0, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vmovapd	%zmm3, %zmm4
	vmovapd	%zmm0, %zmm6
	vptestmq	%zmm1, %zmm2, %k7{%k1}
	kmovb	%k7, %eax
	movl	%eax, %ecx
	notl	%ecx
	kmovb	%ecx, %k1
	vaddpd	%zmm2, %zmm3, %zmm4{%k1}
	popcntl	%eax, %esi
	movq	%rdi, %rax
	vextractf64x4	$0x1, %zmm4, %ymm2
	vaddpd	%ymm4, %ymm2, %ymm2
	subq	%rsi, %rax
	movq	%rbx, %rcx
	vextractf64x2	$0x1, %ymm2, %xmm3
	vaddpd	%xmm2, %xmm3, %xmm3
	vxorpd	%xmm4, %xmm4, %xmm4
	vhaddpd	%xmm3, %xmm3, %xmm3
	cmpq	%rdx, %rbx
	je	.L177
.L176:
	vmovupd	(%rcx), %zmm2
	addq	$64, %rcx
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm6, %zmm2, %zmm5
	vpcmpeqq	%zmm0, %zmm5, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm4, %zmm4{%k1}
	cmpq	%rcx, %rdx
	jne	.L176
.L177:
	vmovupd	(%rcx), %zmm2{%k2}{z}
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm0, %zmm2, %zmm5
	vpcmpeqq	%zmm0, %zmm5, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm2, %zmm4, %zmm4{%k1}
	vextractf64x4	$0x1, %zmm4, %ymm0
	vaddpd	%ymm4, %ymm0, %ymm0
	vextractf64x2	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm1
.L178:
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm3, %xmm3, %xmm3
	vcvtusi2sdq	%rax, %xmm7, %xmm0
	decq	%rax
	vdivsd	%xmm0, %xmm3, %xmm3
	vcvtusi2sdq	%rax, %xmm7, %xmm0
	vmovsd	-296(%rbp), %xmm7
	vsubsd	%xmm3, %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vucomisd	%xmm0, %xmm7
	ja	.L829
	vsqrtsd	%xmm0, %xmm0, %xmm7
	vmovq	%xmm7, %r15
	vzeroupper
.L186:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC27, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L452
	vxorpd	%xmm3, %xmm3, %xmm3
	movq	-304(%rbp), %rsi
	movq	%rcx, %rdx
	vmovsd	%xmm3, %xmm3, %xmm5
	vmovsd	%xmm3, %xmm3, %xmm4
	xorl	%eax, %eax
.L190:
	vmovsd	(%rbx,%rax,8), %xmm2
	vmovsd	(%rsi,%rax,8), %xmm1
	vmulsd	%xmm1, %xmm2, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L879
	vaddsd	%xmm0, %xmm4, %xmm4
	vaddsd	%xmm2, %xmm5, %xmm5
	vaddsd	%xmm1, %xmm3, %xmm3
.L189:
	incq	%rax
	cmpq	%rax, %rcx
	jne	.L190
.L187:
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm5, %xmm3, %xmm3
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	decq	%rdx
	vdivsd	%xmm0, %xmm3, %xmm3
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	vsubsd	%xmm3, %xmm4, %xmm4
	vdivsd	%xmm0, %xmm4, %xmm7
	vmovq	%xmm7, %r13
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC28, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rdx
	andq	$-8, %rdx
	je	.L191
	xorl	%eax, %eax
.L768:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L768
.L191:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r13
	movq	%r15, %rax
	andq	$-8, %rax
	jne	.L193
	testq	%r15, %r15
	je	.L880
	vxorpd	%xmm5, %xmm5, %xmm5
	movq	-304(%rbp), %rcx
	movq	%r15, %rdx
	vmovsd	%xmm5, %xmm5, %xmm2
	vmovsd	%xmm5, %xmm5, %xmm0
.L194:
	vmovsd	(%rbx,%rax,8), %xmm4
	vmovsd	(%rcx,%rax,8), %xmm3
	vmulsd	%xmm3, %xmm4, %xmm1
	vucomisd	%xmm1, %xmm1
	jp	.L881
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm4, %xmm2, %xmm2
	vaddsd	%xmm3, %xmm5, %xmm5
.L199:
	incq	%rax
	cmpq	%rax, %r15
	jne	.L194
.L195:
	vmulsd	%xmm5, %xmm2, %xmm2
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rdx, %xmm7, %xmm1
	vdivsd	%xmm1, %xmm2, %xmm2
	vsubsd	%xmm2, %xmm0, %xmm0
.L197:
	decq	%rdx
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rdx, %xmm7, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %r15
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC29, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r14
	testq	%r14, %r14
	je	.L200
	vxorpd	%xmm6, %xmm6, %xmm6
	movq	-304(%rbp), %rcx
	movq	%r14, %rdx
	vmovsd	%xmm6, %xmm6, %xmm3
	vmovsd	%xmm6, %xmm6, %xmm4
	vmovsd	%xmm6, %xmm6, %xmm5
	xorl	%eax, %eax
.L203:
	vmovsd	(%rbx,%rax,8), %xmm1
	vmovsd	(%rcx,%rax,8), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vucomisd	%xmm2, %xmm2
	jp	.L882
	vfmadd231sd	%xmm1, %xmm1, %xmm3
	vfmadd231sd	%xmm0, %xmm0, %xmm6
	vaddsd	%xmm1, %xmm5, %xmm5
	vaddsd	%xmm0, %xmm4, %xmm4
.L202:
	incq	%rax
	cmpq	%rax, %r14
	jne	.L203
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm4, %xmm4, %xmm4
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	vmovsd	-296(%rbp), %xmm7
	vfmsub132sd	%xmm0, %xmm5, %xmm3
	vfmsub132sd	%xmm6, %xmm4, %xmm0
	vmulsd	%xmm0, %xmm3, %xmm0
	vucomisd	%xmm0, %xmm7
	ja	.L883
.L200:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r15
	testq	%r14, %r14
	je	.L454
	vxorpd	%xmm7, %xmm7, %xmm7
	movq	-304(%rbp), %rcx
	movq	%r14, %rdx
	vmovsd	%xmm7, %xmm7, %xmm3
	vmovsd	%xmm7, %xmm7, %xmm4
	vmovsd	%xmm7, %xmm7, %xmm5
	vmovsd	%xmm7, %xmm7, %xmm6
	xorl	%eax, %eax
.L207:
	vmovsd	(%rbx,%rax,8), %xmm1
	vmovsd	(%rcx,%rax,8), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vucomisd	%xmm2, %xmm2
	jp	.L884
	vfmadd231sd	%xmm1, %xmm1, %xmm3
	vfmadd231sd	%xmm0, %xmm0, %xmm7
	vaddsd	%xmm2, %xmm6, %xmm6
	vaddsd	%xmm1, %xmm5, %xmm5
	vaddsd	%xmm0, %xmm4, %xmm4
.L206:
	incq	%rax
	cmpq	%rax, %r14
	jne	.L207
	vmulsd	%xmm4, %xmm5, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm4, %xmm4, %xmm4
	vcvtusi2sdq	%rdx, %xmm2, %xmm0
	vfmsub132sd	%xmm0, %xmm5, %xmm3
	vfmsub132sd	%xmm0, %xmm1, %xmm6
	vfmsub132sd	%xmm7, %xmm4, %xmm0
	vmovsd	-296(%rbp), %xmm7
	vmulsd	%xmm0, %xmm3, %xmm0
	vucomisd	%xmm0, %xmm7
	ja	.L885
.L204:
	vsqrtsd	%xmm0, %xmm0, %xmm3
.L210:
	vdivsd	%xmm3, %xmm6, %xmm7
	vmovq	%xmm7, %r13
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC30, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rcx
	movq	%rcx, %rax
	andq	$-512, %rax
	jne	.L211
	testq	%rcx, %rcx
	je	.L886
	vxorpd	%xmm6, %xmm6, %xmm6
	movq	-304(%rbp), %rsi
	movq	%rcx, %rdx
	vmovsd	%xmm6, %xmm6, %xmm2
	vmovsd	%xmm6, %xmm6, %xmm3
	vmovsd	%xmm6, %xmm6, %xmm4
.L212:
	vmovsd	(%rbx,%rax,8), %xmm1
	vmovsd	(%rsi,%rax,8), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm5
	vucomisd	%xmm5, %xmm5
	jp	.L887
	vfmadd231sd	%xmm1, %xmm1, %xmm2
	vfmadd231sd	%xmm0, %xmm0, %xmm6
	vaddsd	%xmm1, %xmm4, %xmm4
	vaddsd	%xmm0, %xmm3, %xmm3
.L217:
	incq	%rax
	cmpq	%rax, %rcx
	jne	.L212
.L213:
	vmulsd	%xmm4, %xmm4, %xmm4
	vmulsd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	vfmsub132sd	%xmm0, %xmm4, %xmm2
	vfmsub132sd	%xmm6, %xmm3, %xmm0
	vmulsd	%xmm0, %xmm2, %xmm0
	call	sqrt
.L215:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	-288(%rbp), %rcx
	movq	%rax, %r15
	movq	%rcx, %rax
	andq	$-512, %rax
	jne	.L218
	testq	%rcx, %rcx
	je	.L888
	vxorpd	%xmm7, %xmm7, %xmm7
	movq	-304(%rbp), %rsi
	movq	%rcx, %rdx
	vmovsd	%xmm7, %xmm7, %xmm3
	vmovsd	%xmm7, %xmm7, %xmm4
	vmovsd	%xmm7, %xmm7, %xmm5
	vmovsd	%xmm7, %xmm7, %xmm6
.L219:
	vmovsd	(%rbx,%rax,8), %xmm1
	vmovsd	(%rsi,%rax,8), %xmm0
	vmulsd	%xmm0, %xmm1, %xmm2
	vucomisd	%xmm2, %xmm2
	jp	.L889
	vfmadd231sd	%xmm1, %xmm1, %xmm3
	vfmadd231sd	%xmm0, %xmm0, %xmm7
	vaddsd	%xmm2, %xmm6, %xmm6
	vaddsd	%xmm1, %xmm5, %xmm5
	vaddsd	%xmm0, %xmm4, %xmm4
.L224:
	incq	%rax
	cmpq	%rax, %rcx
	jne	.L219
.L220:
	vmulsd	%xmm5, %xmm4, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm4, %xmm4, %xmm4
	vcvtusi2sdq	%rdx, %xmm2, %xmm0
	vfmsub132sd	%xmm0, %xmm1, %xmm6
	vfmsub132sd	%xmm0, %xmm5, %xmm3
	vfmsub132sd	%xmm7, %xmm4, %xmm0
	vmovq	%xmm6, %r13
	vmulsd	%xmm0, %xmm3, %xmm0
	call	sqrt
	vmovq	%r13, %xmm7
	vdivsd	%xmm0, %xmm7, %xmm7
	vmovq	%xmm7, %r13
.L222:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC31, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r13
	leaq	(%rbx,%r13,8), %r14
	cmpq	%r14, %rbx
	je	.L225
	movq	%r13, %rdx
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
.L228:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L890
	vaddsd	%xmm0, %xmm1, %xmm1
.L227:
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	.L228
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rdx, %xmm7, %xmm3
	movq	%rbx, %rax
	vxorpd	%xmm2, %xmm2, %xmm2
	vdivsd	%xmm3, %xmm1, %xmm1
.L231:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L230
	vaddsd	%xmm0, %xmm2, %xmm2
.L230:
	addq	$8, %rax
	cmpq	%rax, %r14
	jne	.L231
.L412:
	vmulsd	%xmm1, %xmm1, %xmm1
	vmovsd	-296(%rbp), %xmm7
	vfnmadd132sd	%xmm3, %xmm2, %xmm1
	vmovsd	%xmm1, %xmm1, %xmm0
	vmulsd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vdivsd	%xmm3, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm7
	ja	.L891
.L232:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r15
	cmpq	%r14, %rbx
	je	.L233
	movq	%rbx, %rax
	vxorpd	%xmm2, %xmm2, %xmm2
.L236:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L892
	vaddsd	%xmm0, %xmm2, %xmm2
.L235:
	addq	$8, %rax
	cmpq	%r14, %rax
	jne	.L236
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%r13, %xmm7, %xmm4
	movq	%rbx, %rax
	vxorpd	%xmm3, %xmm3, %xmm3
	vdivsd	%xmm4, %xmm2, %xmm2
.L239:
	vmovsd	(%rax), %xmm0
	vsubsd	%xmm2, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L238
	vaddsd	%xmm0, %xmm3, %xmm3
.L238:
	addq	$8, %rax
	cmpq	%r14, %rax
	jne	.L239
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
.L241:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L240
	vaddsd	%xmm0, %xmm1, %xmm1
.L240:
	addq	$8, %rax
	cmpq	%r14, %rax
	jne	.L241
.L411:
	vmulsd	%xmm2, %xmm2, %xmm2
	vmovsd	-296(%rbp), %xmm7
	vfnmadd132sd	%xmm4, %xmm1, %xmm2
	vmulsd	%xmm2, %xmm2, %xmm1
	vmulsd	%xmm2, %xmm1, %xmm0
	vdivsd	%xmm4, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm7
	ja	.L833
	vsqrtsd	%xmm0, %xmm0, %xmm0
.L244:
	vdivsd	%xmm0, %xmm3, %xmm7
	vmovq	%xmm7, %r13
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC32, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rax
	movq	%r15, %rcx
	andq	$-8, %rax
	je	.L245
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L457
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	vmovapd	%zmm0, %zmm5
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
.L247:
	vmovupd	(%rsi), %zmm2
	addq	$64, %rsi
	vandpd	%zmm5, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kmovb	%k1, %ecx
	knotb	%k1, %k1
	popcntl	%ecx, %ecx
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	subq	%rcx, %rdi
	cmpq	%rsi, %rdx
	jne	.L247
.L246:
	movl	%r15d, %ecx
	andl	$7, %ecx
	movl	$1, %eax
	shlx	%ecx, %eax, %eax
	decl	%eax
	kmovb	%eax, %k2
	vmovupd	(%rsi), %zmm2{%k2}{z}
	xorl	%esi, %esi
	vandpd	%zmm0, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vmovapd	%zmm3, %zmm4
	vxorpd	%xmm7, %xmm7, %xmm7
	vptestmq	%zmm1, %zmm2, %k0{%k1}
	kmovb	%k0, %eax
	movl	%eax, %ecx
	notl	%ecx
	kmovb	%ecx, %k1
	vaddpd	%zmm2, %zmm3, %zmm4{%k1}
	popcntl	%eax, %esi
	movq	%rdi, %rax
	vextractf64x4	$0x1, %zmm4, %ymm2
	vaddpd	%ymm4, %ymm2, %ymm2
	subq	%rsi, %rax
	vcvtusi2sdq	%rax, %xmm7, %xmm5
	vextractf64x2	$0x1, %ymm2, %xmm3
	vaddpd	%xmm2, %xmm3, %xmm3
	movq	%rbx, %rax
	vhaddpd	%xmm3, %xmm3, %xmm3
	vdivsd	%xmm5, %xmm3, %xmm3
	cmpq	%rdx, %rbx
	je	.L249
.L769:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L769
.L249:
	vmovapd	%zmm0, %zmm7
	movq	%rbx, %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	cmpq	%rdx, %rbx
	je	.L255
.L256:
	vmovupd	(%rax), %zmm2
	addq	$64, %rax
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm7, %zmm2, %zmm6
	vpcmpeqq	%zmm0, %zmm6, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm4, %zmm4{%k1}
	cmpq	%rax, %rdx
	jne	.L256
.L255:
	vmovupd	(%rax), %zmm2{%k2}{z}
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm0, %zmm2, %zmm6
	vpcmpeqq	%zmm0, %zmm6, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm2, %zmm4, %zmm4{%k1}
	vextractf64x4	$0x1, %zmm4, %ymm0
	vaddpd	%ymm4, %ymm0, %ymm0
	vextractf64x2	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm1
.L257:
	vmulsd	%xmm3, %xmm3, %xmm3
	vmovsd	-296(%rbp), %xmm7
	vfnmadd132sd	%xmm5, %xmm1, %xmm3
	vmulsd	%xmm3, %xmm3, %xmm1
	vmulsd	%xmm3, %xmm1, %xmm0
	vdivsd	%xmm5, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm7
	ja	.L893
.L260:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r13
	movq	%r15, %rax
	movq	%r15, %rcx
	andq	$-8, %rax
	je	.L261
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L460
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	vmovapd	%zmm0, %zmm5
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
.L263:
	vmovupd	(%rsi), %zmm2
	addq	$64, %rsi
	vandpd	%zmm5, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kmovb	%k1, %ecx
	knotb	%k1, %k1
	popcntl	%ecx, %ecx
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	subq	%rcx, %rdi
	cmpq	%rsi, %rdx
	jne	.L263
.L262:
	andl	$7, %r15d
	movl	$1, %eax
	shlx	%r15d, %eax, %eax
	decl	%eax
	kmovb	%eax, %k2
	vmovupd	(%rsi), %zmm2{%k2}{z}
	xorl	%esi, %esi
	vandpd	%zmm0, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vmovapd	%zmm3, %zmm4
	vxorpd	%xmm7, %xmm7, %xmm7
	vptestmq	%zmm1, %zmm2, %k7{%k1}
	vmovapd	%zmm0, %zmm8
	vxorpd	%xmm5, %xmm5, %xmm5
	kmovb	%k7, %eax
	movl	%eax, %ecx
	notl	%ecx
	kmovb	%ecx, %k1
	vaddpd	%zmm2, %zmm3, %zmm4{%k1}
	popcntl	%eax, %esi
	movq	%rdi, %rax
	vextractf64x4	$0x1, %zmm4, %ymm2
	vaddpd	%ymm4, %ymm2, %ymm2
	subq	%rsi, %rax
	vcvtusi2sdq	%rax, %xmm7, %xmm6
	vextractf64x2	$0x1, %ymm2, %xmm4
	vaddpd	%xmm2, %xmm4, %xmm4
	movq	%rbx, %rax
	vhaddpd	%xmm4, %xmm4, %xmm4
	vdivsd	%xmm6, %xmm4, %xmm4
	vbroadcastsd	%xmm4, %zmm7
	cmpq	%rdx, %rbx
	je	.L265
.L264:
	vmovupd	(%rax), %zmm3
	addq	$64, %rax
	vsubpd	%zmm7, %zmm3, %zmm3
	vmulpd	%zmm3, %zmm3, %zmm2
	vmulpd	%zmm3, %zmm2, %zmm2
	vandpd	%zmm8, %zmm2, %zmm3
	vpcmpeqq	%zmm0, %zmm3, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm5, %zmm5{%k1}
	cmpq	%rax, %rdx
	jne	.L264
.L265:
	vmovupd	(%rax), %zmm3{%k2}{z}
	vmovapd	%zmm0, %zmm8
	vsubpd	%zmm7, %zmm3, %zmm3
	movq	%rbx, %rax
	vmulpd	%zmm3, %zmm3, %zmm2
	vmulpd	%zmm3, %zmm2, %zmm2
	vandpd	%zmm0, %zmm2, %zmm3
	vpcmpeqq	%zmm0, %zmm3, %k1
	vxorpd	%xmm3, %xmm3, %xmm3
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm2, %zmm5, %zmm5{%k1}
	vextractf64x4	$0x1, %zmm5, %ymm2
	vaddpd	%ymm5, %ymm2, %ymm2
	vextractf64x2	$0x1, %ymm2, %xmm7
	vaddpd	%xmm2, %xmm7, %xmm7
	vhaddpd	%xmm7, %xmm7, %xmm7
	cmpq	%rdx, %rbx
	je	.L272
.L271:
	vmovupd	(%rax), %zmm2
	addq	$64, %rax
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm8, %zmm2, %zmm5
	vpcmpeqq	%zmm0, %zmm5, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	cmpq	%rax, %rdx
	jne	.L271
.L272:
	vmovupd	(%rax), %zmm2{%k2}{z}
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm0, %zmm2, %zmm5
	vpcmpeqq	%zmm0, %zmm5, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	vextractf64x4	$0x1, %zmm3, %ymm0
	vaddpd	%ymm3, %ymm0, %ymm0
	vextractf64x2	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm1
.L276:
	vmulsd	%xmm4, %xmm4, %xmm4
	vmovsd	-296(%rbp), %xmm5
	vfnmadd132sd	%xmm6, %xmm1, %xmm4
	vmulsd	%xmm4, %xmm4, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vdivsd	%xmm6, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm5
	ja	.L836
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vzeroupper
.L280:
	vdivsd	%xmm0, %xmm7, %xmm7
	vmovq	%xmm7, %r15
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC33, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rsi
	leaq	(%rbx,%rsi,8), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r15
	cmpq	%rcx, %rbx
	je	.L281
	movq	%rbx, %rax
	vxorpd	%xmm0, %xmm0, %xmm0
.L284:
	vmovsd	(%rax), %xmm1
	vucomisd	%xmm1, %xmm1
	jp	.L894
	vaddsd	%xmm1, %xmm0, %xmm0
.L283:
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L284
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rsi, %xmm7, %xmm4
	movq	%rbx, %rax
	vxorpd	%xmm2, %xmm2, %xmm2
	vdivsd	%xmm4, %xmm0, %xmm1
.L287:
	vmovsd	(%rax), %xmm0
	vsubsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L286
	vaddsd	%xmm0, %xmm2, %xmm2
.L286:
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L287
	movq	%rbx, %rax
	vxorpd	%xmm3, %xmm3, %xmm3
.L289:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L288
	vaddsd	%xmm0, %xmm3, %xmm3
.L288:
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.L289
.L410:
	vmulsd	%xmm1, %xmm1, %xmm1
	vfnmadd132sd	%xmm4, %xmm3, %xmm1
	vmulsd	%xmm2, %xmm4, %xmm4
	vmulsd	%xmm1, %xmm1, %xmm0
	vdivsd	%xmm0, %xmm4, %xmm7
	vmovq	%xmm7, %r13
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC34, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r13, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rax
	andq	$-8, %rax
	je	.L290
	leaq	(%rbx,%rax,8), %rax
	cmpq	%rax, %rbx
	je	.L290
	movq	%rbx, %rdx
.L770:
	addq	$64, %rdx
	cmpq	%rdx, %rax
	jne	.L770
	cmpq	%rax, %rbx
	je	.L290
	movq	%rbx, %rdx
.L771:
	addq	$64, %rdx
	cmpq	%rdx, %rax
	jne	.L771
	cmpq	%rax, %rbx
	je	.L290
	movq	%rbx, %rdx
.L772:
	addq	$64, %rdx
	cmpq	%rdx, %rax
	jne	.L772
.L290:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r13
	movq	%r15, %rax
	movq	%r15, %rcx
	andq	$-8, %rax
	je	.L297
	leaq	(%rbx,%rax,8), %rdx
	cmpq	%rdx, %rbx
	je	.L466
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	vmovapd	%zmm0, %zmm5
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
.L299:
	vmovupd	(%rsi), %zmm2
	addq	$64, %rsi
	vandpd	%zmm5, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kmovb	%k1, %ecx
	knotb	%k1, %k1
	popcntl	%ecx, %ecx
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	subq	%rcx, %rdi
	cmpq	%rsi, %rdx
	jne	.L299
.L298:
	andl	$7, %r15d
	movl	$1, %eax
	shlx	%r15d, %eax, %eax
	decl	%eax
	kmovb	%eax, %k2
	vmovupd	(%rsi), %zmm2{%k2}{z}
	xorl	%esi, %esi
	vandpd	%zmm0, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vmovapd	%zmm3, %zmm4
	vxorpd	%xmm7, %xmm7, %xmm7
	vptestmq	%zmm1, %zmm2, %k0{%k1}
	vmovapd	%zmm0, %zmm8
	kmovb	%k0, %eax
	movl	%eax, %ecx
	notl	%ecx
	kmovb	%ecx, %k1
	vaddpd	%zmm2, %zmm3, %zmm4{%k1}
	popcntl	%eax, %esi
	movq	%rdi, %rax
	vextractf64x4	$0x1, %zmm4, %ymm2
	vaddpd	%ymm4, %ymm2, %ymm2
	subq	%rsi, %rax
	vcvtusi2sdq	%rax, %xmm7, %xmm7
	vextractf64x2	$0x1, %ymm2, %xmm5
	vaddpd	%xmm2, %xmm5, %xmm5
	movq	%rbx, %rax
	vxorpd	%xmm3, %xmm3, %xmm3
	vhaddpd	%xmm5, %xmm5, %xmm5
	vdivsd	%xmm7, %xmm5, %xmm5
	vbroadcastsd	%xmm5, %zmm6
	cmpq	%rdx, %rbx
	je	.L301
.L300:
	vmovupd	(%rax), %zmm4
	addq	$64, %rax
	vsubpd	%zmm6, %zmm4, %zmm2
	vmulpd	%zmm2, %zmm2, %zmm2
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm8, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	cmpq	%rax, %rdx
	jne	.L300
.L301:
	vmovupd	(%rax), %zmm2{%k2}{z}
	vmovapd	%zmm0, %zmm8
	vsubpd	%zmm6, %zmm2, %zmm2
	movq	%rbx, %rax
	vmulpd	%zmm2, %zmm2, %zmm2
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm0, %zmm2, %zmm4
	vpcmpeqq	%zmm0, %zmm4, %k1
	vmovapd	%zmm3, %zmm4
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm2, %zmm3, %zmm4{%k1}
	vxorpd	%xmm3, %xmm3, %xmm3
	vextractf64x4	$0x1, %zmm4, %ymm2
	vaddpd	%ymm4, %ymm2, %ymm2
	vextractf64x2	$0x1, %ymm2, %xmm4
	vaddpd	%xmm2, %xmm4, %xmm4
	vhaddpd	%xmm4, %xmm4, %xmm4
	cmpq	%rdx, %rbx
	je	.L308
.L307:
	vmovupd	(%rax), %zmm2
	addq	$64, %rax
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm8, %zmm2, %zmm6
	vpcmpeqq	%zmm0, %zmm6, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	knotb	%k1, %k1
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	cmpq	%rax, %rdx
	jne	.L307
.L308:
	vmovupd	(%rax), %zmm2{%k2}{z}
	vmulpd	%zmm2, %zmm2, %zmm2
	vandpd	%zmm0, %zmm2, %zmm6
	vpcmpeqq	%zmm0, %zmm6, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	vextractf64x4	$0x1, %zmm3, %ymm0
	vaddpd	%ymm3, %ymm0, %ymm0
	vextractf64x2	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm1
	vzeroupper
.L312:
	vmulsd	%xmm5, %xmm5, %xmm5
	vmulsd	%xmm4, %xmm7, %xmm4
	vfnmadd132sd	%xmm7, %xmm1, %xmm5
	vmulsd	%xmm5, %xmm5, %xmm5
	vdivsd	%xmm5, %xmm4, %xmm7
	vmovq	%xmm7, %r15
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC35, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r15, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r14
	movq	.LC36(%rip), %r13
	xorl	%r15d, %r15d
	testq	%r14, %r14
	je	.L317
.L314:
	vmovsd	(%rbx,%r15,8), %xmm1
	vmovq	%r13, %xmm0
	call	pow
	vmovsd	%xmm0, (%r12,%r15,8)
	incq	%r15
	cmpq	%r15, %r14
	jne	.L314
.L317:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	.LC36(%rip), %r13
	movq	%rax, -368(%rbp)
	xorl	%r15d, %r15d
	testq	%r14, %r14
	je	.L316
.L315:
	vmovsd	(%rbx,%r15,8), %xmm1
	vmovq	%r13, %xmm0
	call	pow
	vmovsd	%xmm0, (%r12,%r15,8)
	incq	%r15
	cmpq	%r15, %r14
	jne	.L315
.L316:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC37, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r13
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r13, %rsi
	movq	%rax, %rdi
	subq	-368(%rbp), %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %r14
	andq	$-8, %r14
	jne	.L471
	movq	.LC36(%rip), %r13
	testq	%r15, %r15
	je	.L329
.L320:
	vmovsd	(%rbx,%r14,8), %xmm1
	vmovq	%r13, %xmm0
	call	pow
	vmovsd	%xmm0, (%r12,%r14,8)
	incq	%r14
	cmpq	%r14, %r15
	jne	.L320
	movq	-288(%rbp), %r15
.L329:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%r15, %r14
	movq	%rax, -432(%rbp)
	andq	$-8, %r14
	je	.L895
	xorl	%r13d, %r13d
	jmp	.L321
.L333:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm3
	vmovdqa64	_ZN9FAST_MATHL7exp_subE(%rip), %zmm2
	vpandq	%zmm0, %zmm3, %zmm1
	vpcmpeqq	%zmm3, %zmm1, %k3
	vpsrlq	$52, %zmm1, %zmm1
	vpcmpq	$5, %zmm2, %zmm1, %k1
	vpmovq2m	%zmm0, %k2
	movabsq	$9218868437227405312, %rax
	vpsubq	%zmm2, %zmm1, %zmm4{%k1}{z}
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm2
	vpcmpq	$5, _ZN9FAST_MATHL8exp_flowE(%rip), %zmm4, %k4
	vporq	%zmm2, %zmm3, %zmm1
	vandpd	%zmm1, %zmm0, %zmm1
	vandpd	%zmm2, %zmm1, %zmm1{%k1}
	vpsllvq	%zmm4, %zmm1, %zmm0
	vptestmq	%zmm2, %zmm1, %k3{%k3}
	vpandq	%zmm3, %zmm0, %zmm5{%k1}{z}
	vmovapd	%zmm0, %zmm3
	vandpd	%zmm2, %zmm0, %zmm3{%k1}
	vmovapd	_ZN9FAST_MATHL7avx_oneE(%rip), %zmm0
	vmovapd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+64(%rip), %zmm2
	vorpd	%zmm0, %zmm3, %zmm3{%k1}
	vmovapd	%zmm3, %zmm1
	vsubpd	%zmm0, %zmm3, %zmm1{%k1}
	kandnb	%k1, %k2, %k5
	kandb	%k4, %k2, %k0
	vsubpd	%zmm1, %zmm0, %zmm1{%k2}
	vmulpd	%zmm1, %zmm1, %zmm3
	vmulpd	%zmm3, %zmm3, %zmm0
	vfmadd213pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip), %zmm3, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+128(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+192(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+256(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+320(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vmovdqa64	_ZN9FAST_MATHL7exp_oneE(%rip), %zmm3
	vpsllvq	%zmm4, %zmm3, %zmm4
	vfmadd132pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+384(%rip), %zmm2, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vsubpd	%zmm1, %zmm0, %zmm0
	vpaddq	%zmm4, %zmm5, %zmm1
	vdivpd	%zmm0, %zmm2, %zmm2
	vmovdqa64	%zmm2, %zmm0
	vpaddq	%zmm2, %zmm1, %zmm0{%k5}
	kandb	%k1, %k2, %k5
	vpsubq	%zmm1, %zmm0, %zmm0{%k5}
	vptestnmq	_ZN9FAST_MATHL10exp_mask10E(%rip), %zmm0, %k1{%k1}
	vpsubq	%zmm3, %zmm0, %zmm0{%k2}
	vpbroadcastq	%rax, %zmm0{%k4}
	xorl	%eax, %eax
	korb	%k1, %k0, %k1
	vpbroadcastq	%rax, %zmm0{%k1}
	movabsq	$9221120237041090561, %rax
	vpbroadcastq	%rax, %zmm0{%k3}
	vmovupd	%zmm0, (%r12,%r13,8)
	addq	$8, %r13
	cmpq	%r13, %r14
	je	.L896
.L321:
	vmovupd	(%rbx,%r13,8), %zmm0
	movzbl	_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip), %eax
	testb	%al, %al
	jne	.L333
	movl	$_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, %edi
	vmovapd	%zmm0, -368(%rbp)
	vzeroupper
	call	__cxa_guard_acquire
	testl	%eax, %eax
	vmovapd	-368(%rbp), %zmm0
	je	.L333
	vmovdqa64	.LC38(%rip), %zmm7
	movl	$_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, %edi
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip)
	vmovdqa64	.LC39(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+64(%rip)
	vmovdqa64	.LC40(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+128(%rip)
	vmovdqa64	.LC41(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+192(%rip)
	vmovdqa64	.LC42(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+256(%rip)
	vmovdqa64	.LC43(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+320(%rip)
	vmovdqa64	.LC44(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+384(%rip)
	vzeroupper
	call	__cxa_guard_release
	vmovapd	-368(%rbp), %zmm0
	jmp	.L333
.L61:
	vpextrq	$1, %xmm3, %rax
	jmp	.L62
.L877:
	decq	%r14
	jmp	.L154
.L875:
	decq	%rdx
	jmp	.L147
.L874:
	decq	%rcx
	jmp	.L125
.L894:
	decq	%rsi
	jmp	.L283
.L892:
	decq	%r13
	jmp	.L235
.L890:
	decq	%rdx
	jmp	.L227
.L471:
	xorl	%r13d, %r13d
	jmp	.L319
.L324:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm3
	vmovdqa64	_ZN9FAST_MATHL7exp_subE(%rip), %zmm2
	vpandq	%zmm0, %zmm3, %zmm1
	vpcmpeqq	%zmm3, %zmm1, %k3
	vpsrlq	$52, %zmm1, %zmm1
	vpcmpq	$5, %zmm2, %zmm1, %k1
	vpmovq2m	%zmm0, %k2
	movabsq	$9218868437227405312, %rax
	vpsubq	%zmm2, %zmm1, %zmm4{%k1}{z}
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm2
	vpcmpq	$5, _ZN9FAST_MATHL8exp_flowE(%rip), %zmm4, %k4
	vporq	%zmm2, %zmm3, %zmm1
	vandpd	%zmm1, %zmm0, %zmm1
	vandpd	%zmm2, %zmm1, %zmm1{%k1}
	vpsllvq	%zmm4, %zmm1, %zmm0
	vptestmq	%zmm2, %zmm1, %k3{%k3}
	vpandq	%zmm3, %zmm0, %zmm5{%k1}{z}
	vmovapd	%zmm0, %zmm3
	vandpd	%zmm2, %zmm0, %zmm3{%k1}
	vmovapd	_ZN9FAST_MATHL7avx_oneE(%rip), %zmm0
	vmovapd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+64(%rip), %zmm2
	vorpd	%zmm0, %zmm3, %zmm3{%k1}
	vmovapd	%zmm3, %zmm1
	vsubpd	%zmm0, %zmm3, %zmm1{%k1}
	kandnb	%k1, %k2, %k5
	kandb	%k4, %k2, %k0
	vsubpd	%zmm1, %zmm0, %zmm1{%k2}
	vmulpd	%zmm1, %zmm1, %zmm3
	vmulpd	%zmm3, %zmm3, %zmm0
	vfmadd213pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip), %zmm3, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+128(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+192(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+256(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+320(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vmovdqa64	_ZN9FAST_MATHL7exp_oneE(%rip), %zmm3
	vpsllvq	%zmm4, %zmm3, %zmm4
	vfmadd132pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+384(%rip), %zmm2, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vsubpd	%zmm1, %zmm0, %zmm0
	vpaddq	%zmm4, %zmm5, %zmm1
	vdivpd	%zmm0, %zmm2, %zmm2
	vmovdqa64	%zmm2, %zmm0
	vpaddq	%zmm2, %zmm1, %zmm0{%k5}
	kandb	%k1, %k2, %k5
	vpsubq	%zmm1, %zmm0, %zmm0{%k5}
	vptestnmq	_ZN9FAST_MATHL10exp_mask10E(%rip), %zmm0, %k1{%k1}
	vpsubq	%zmm3, %zmm0, %zmm0{%k2}
	vpbroadcastq	%rax, %zmm0{%k4}
	xorl	%eax, %eax
	korb	%k1, %k0, %k1
	vpbroadcastq	%rax, %zmm0{%k1}
	movabsq	$9221120237041090561, %rax
	vpbroadcastq	%rax, %zmm0{%k3}
	vmovupd	%zmm0, (%r12,%r13,8)
	addq	$8, %r13
	cmpq	%r13, %r14
	je	.L897
.L319:
	vmovupd	(%rbx,%r13,8), %zmm0
	movzbl	_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip), %eax
	testb	%al, %al
	jne	.L324
	movl	$_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, %edi
	vmovapd	%zmm0, -368(%rbp)
	vzeroupper
	call	__cxa_guard_acquire
	testl	%eax, %eax
	vmovapd	-368(%rbp), %zmm0
	je	.L324
	vmovdqa64	.LC38(%rip), %zmm7
	movl	$_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, %edi
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip)
	vmovdqa64	.LC39(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+64(%rip)
	vmovdqa64	.LC40(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+128(%rip)
	vmovdqa64	.LC41(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+192(%rip)
	vmovdqa64	.LC42(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+256(%rip)
	vmovdqa64	.LC43(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+320(%rip)
	vmovdqa64	.LC44(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+384(%rip)
	vzeroupper
	call	__cxa_guard_release
	vmovapd	-368(%rbp), %zmm0
	jmp	.L324
.L897:
	andl	$7, %r15d
	movl	$1, %eax
	leaq	0(,%r14,8), %r13
	shlx	%r15d, %eax, %eax
	vxorpd	%xmm7, %xmm7, %xmm7
	leal	-1(%rax), %r14d
	kmovb	%r14d, %k7
	vmovupd	(%rbx,%r13), %zmm7{%k7}
	vmovapd	%zmm7, -368(%rbp)
	movzbl	_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip), %eax
	testb	%al, %al
	je	.L898
.L327:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm3
	vmovapd	-368(%rbp), %zmm7
	vmovdqa64	_ZN9FAST_MATHL7exp_subE(%rip), %zmm1
	vpandq	%zmm7, %zmm3, %zmm0
	vpcmpeqq	%zmm3, %zmm0, %k3
	vpsrlq	$52, %zmm0, %zmm0
	vpcmpq	$5, %zmm1, %zmm0, %k1
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm2
	vpmovq2m	%zmm7, %k2
	vpsubq	%zmm1, %zmm0, %zmm4{%k1}{z}
	vporq	%zmm2, %zmm3, %zmm0
	vandpd	%zmm7, %zmm0, %zmm1
	vandpd	%zmm2, %zmm1, %zmm1{%k1}
	vpsllvq	%zmm4, %zmm1, %zmm0
	vptestmq	%zmm2, %zmm1, %k3{%k3}
	vpandq	%zmm3, %zmm0, %zmm5{%k1}{z}
	vmovapd	%zmm0, %zmm3
	vandpd	%zmm2, %zmm0, %zmm3{%k1}
	vmovapd	_ZN9FAST_MATHL7avx_oneE(%rip), %zmm0
	vmovapd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+64(%rip), %zmm2
	vorpd	%zmm0, %zmm3, %zmm3{%k1}
	vmovapd	%zmm3, %zmm1
	vsubpd	%zmm0, %zmm3, %zmm1{%k1}
	vpcmpq	$5, _ZN9FAST_MATHL8exp_flowE(%rip), %zmm4, %k4
	kandnb	%k1, %k2, %k5
	vsubpd	%zmm1, %zmm0, %zmm1{%k2}
	movl	$2047, %eax
	salq	$52, %rax
	vmulpd	%zmm1, %zmm1, %zmm3
	kandb	%k4, %k2, %k0
	kmovb	%r14d, %k7
	vfmadd213pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip), %zmm3, %zmm2
	vmulpd	%zmm3, %zmm3, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+128(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+192(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+256(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+320(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vmovdqa64	_ZN9FAST_MATHL7exp_oneE(%rip), %zmm3
	vpsllvq	%zmm4, %zmm3, %zmm4
	vfmadd132pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+384(%rip), %zmm2, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vsubpd	%zmm1, %zmm0, %zmm0
	vpaddq	%zmm4, %zmm5, %zmm1
	vdivpd	%zmm0, %zmm2, %zmm2
	vmovdqa64	%zmm2, %zmm0
	vpaddq	%zmm2, %zmm1, %zmm0{%k5}
	kandb	%k1, %k2, %k5
	vpsubq	%zmm1, %zmm0, %zmm0{%k5}
	vptestnmq	_ZN9FAST_MATHL10exp_mask10E(%rip), %zmm0, %k1{%k1}
	vpsubq	%zmm3, %zmm0, %zmm0{%k2}
	vpbroadcastq	%rax, %zmm0{%k4}
	xorl	%eax, %eax
	korb	%k1, %k0, %k1
	vpbroadcastq	%rax, %zmm0{%k1}
	movabsq	$9221120237041090561, %rax
	vpbroadcastq	%rax, %zmm0{%k3}
	vmovupd	%zmm0, (%r12,%r13){%k7}
	movq	-288(%rbp), %r15
	jmp	.L329
.L895:
	movq	.LC36(%rip), %r13
	testq	%r15, %r15
	je	.L899
	vzeroupper
.L330:
	vmovsd	(%rbx,%r14,8), %xmm1
	vmovq	%r13, %xmm0
	call	pow
	vmovsd	%xmm0, (%r12,%r14,8)
	incq	%r14
	cmpq	%r14, %r15
	jne	.L330
.L338:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC45, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r13
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r13, %rsi
	movq	%rax, %rdi
	subq	-432(%rbp), %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r13
	xorl	%r14d, %r14d
	testq	%r13, %r13
	je	.L342
.L339:
	vmovsd	(%rbx,%r14,8), %xmm0
	call	log2
	vmovsd	%xmm0, (%r12,%r14,8)
	incq	%r14
	cmpq	%r14, %r13
	jne	.L339
.L342:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	xorl	%r15d, %r15d
	movq	%rax, %r14
	testq	%r13, %r13
	je	.L341
.L340:
	vmovsd	(%rbx,%r15,8), %xmm0
	call	log2
	vmovsd	%xmm0, (%r12,%r15,8)
	incq	%r15
	cmpq	%r15, %r13
	jne	.L340
.L341:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC46, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r13
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r13, %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %r13
	andq	$-8, %r13
	jne	.L475
	testq	%r15, %r15
	je	.L354
.L345:
	vmovsd	(%rbx,%r13,8), %xmm0
	call	log2
	vmovsd	%xmm0, (%r12,%r13,8)
	incq	%r13
	cmpq	%r13, %r15
	jne	.L345
	movq	-288(%rbp), %r15
.L354:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%r15, %r13
	movq	%rax, -368(%rbp)
	andq	$-8, %r13
	je	.L900
	xorl	%r14d, %r14d
	jmp	.L346
.L358:
	vpsrlq	$52, %zmm0, %zmm3
	vpsubq	_ZN9FAST_MATHL7exp_subE(%rip), %zmm3, %zmm3
	vmovdqa64	_ZN9FAST_MATHL8exp_zeroE(%rip), %zmm1
	vpcmpeqq	_ZN9FAST_MATHL7exp_infE(%rip), %zmm3, %k2
	vptestnmq	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0, %k4
	vpmovq2m	%zmm0, %k1
	vptestnmq	%zmm1, %zmm0, %k3{%k2}
	vandpd	%zmm1, %zmm0, %zmm0
	vmovapd	_ZN9FAST_MATHL7avx_oneE(%rip), %zmm2
	vorpd	_ZN9FAST_MATHL7exp_setE(%rip), %zmm0, %zmm0
	vcvtqq2pd	%zmm3, %zmm3
	vsubpd	%zmm2, %zmm0, %zmm1
	vaddpd	%zmm2, %zmm0, %zmm0
	movabsq	$-4503599627370496, %rax
	korb	%k2, %k1, %k1
	vdivpd	%zmm0, %zmm1, %zmm1
	vmulpd	%zmm1, %zmm1, %zmm0
	vmulpd	%zmm0, %zmm1, %zmm2
	vmulpd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip), %zmm1, %zmm1
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+64(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+128(%rip), %zmm2, %zmm1
	vmulpd	%zmm0, %zmm2, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+192(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+256(%rip), %zmm2, %zmm1
	vmulpd	%zmm0, %zmm2, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+320(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm0
	vfmadd132pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+384(%rip), %zmm1, %zmm0
	vaddpd	%zmm3, %zmm0, %zmm0
	vpbroadcastq	%rax, %zmm0{%k4}
	movabsq	$9221120237041090561, %rax
	vpbroadcastq	%rax, %zmm0{%k1}
	movabsq	$9218868437227405312, %rax
	vpbroadcastq	%rax, %zmm0{%k3}
	vmovupd	%zmm0, (%r12,%r14,8)
	addq	$8, %r14
	cmpq	%r14, %r13
	je	.L901
.L346:
	vmovupd	(%rbx,%r14,8), %zmm0
	movzbl	_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip), %eax
	testb	%al, %al
	jne	.L358
	movl	$_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, %edi
	vmovapd	%zmm0, -432(%rbp)
	vzeroupper
	call	__cxa_guard_acquire
	testl	%eax, %eax
	vmovapd	-432(%rbp), %zmm0
	je	.L358
	vmovdqa64	.LC47(%rip), %zmm7
	movl	$_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, %edi
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip)
	vmovdqa64	.LC48(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+64(%rip)
	vmovdqa64	.LC49(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+128(%rip)
	vmovdqa64	.LC50(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+192(%rip)
	vmovdqa64	.LC51(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+256(%rip)
	vmovdqa64	.LC52(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+320(%rip)
	vmovdqa64	.LC53(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+384(%rip)
	vzeroupper
	call	__cxa_guard_release
	vmovapd	-432(%rbp), %zmm0
	jmp	.L358
.L900:
	testq	%r15, %r15
	je	.L902
	vzeroupper
.L355:
	vmovsd	(%rbx,%r13,8), %xmm0
	call	log2
	vmovsd	%xmm0, (%r12,%r13,8)
	incq	%r13
	cmpq	%r13, %r15
	jne	.L355
.L363:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC54, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r12
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r12, %rsi
	movq	%rax, %rdi
	subq	-368(%rbp), %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rdi
	movabsq	$-3689348814741910323, %rdx
	movq	%rdi, %rax
	mulq	%rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	leaq	(%rbx,%rsi,8), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	vxorpd	%xmm7, %xmm7, %xmm7
	movq	%rax, %r15
	leaq	1(%rsi), %rax
	vcvtsi2sdq	%rax, %xmm7, %xmm2
	movq	.LC36(%rip), %r13
	vmovsd	-296(%rbp), %xmm4
	vmovq	%r13, %xmm7
	vdivsd	%xmm2, %xmm7, %xmm2
	vmovsd	.LC55(%rip), %xmm7
	leaq	(%rbx,%rdi,8), %rdx
	movl	$100, %r8d
	vsubsd	%xmm2, %xmm7, %xmm3
	.p2align 4,,10
	.p2align 3
.L370:
	movq	%rsi, %r9
	cmpq	%rcx, %rbx
	je	.L477
	movq	%rbx, %rax
	vmovsd	%xmm4, %xmm4, %xmm1
	.p2align 4,,10
	.p2align 3
.L367:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L903
	vaddsd	%xmm0, %xmm1, %xmm1
.L366:
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.L367
.L364:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%r9, %xmm7, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm0
	cmpq	%rsi, %rdi
	jbe	.L368
	movq	%rcx, %rax
	.p2align 4,,10
	.p2align 3
.L369:
	vmulsd	(%rax), %xmm2, %xmm1
	addq	$8, %rax
	vfmadd132sd	%xmm3, %xmm1, %xmm0
	cmpq	%rax, %rdx
	jne	.L369
.L368:
	decl	%r8d
	jne	.L370
	vmovq	%xmm0, %r12
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC56, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r14
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r12, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r14, %rsi
	movq	%rax, %rdi
	subq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movabsq	$-3689348814741910323, %rdx
	movq	%r15, %rax
	mulq	%rdx
	movq	%r15, %rax
	movl	$100, %edi
	shrq	$2, %rdx
	subq	%rdx, %rax
	movq	%rdx, %r9
	movq	%rax, %r10
	andq	$-8, %r9
	leaq	0(,%rdx,8), %r14
	andq	$-8, %rax
	movq	%rdx, %r11
	leaq	(%rbx,%r14), %rsi
	leaq	(%rbx,%r9,8), %rcx
	andq	$-32, %r10
	leaq	0(,%rax,8), %r12
	vmovq	%r13, %xmm5
	.p2align 4,,10
	.p2align 3
.L381:
	testq	%r9, %r9
	je	.L371
	cmpq	%rcx, %rbx
	je	.L374
	movq	%rbx, %rax
	.p2align 4,,10
	.p2align 3
.L773:
	addq	$64, %rax
	cmpq	%rax, %rcx
	jne	.L773
.L374:
	testq	%r10, %r10
	je	.L378
	leaq	1(%r11), %rax
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	%rax, %xmm7, %xmm0
	vmovsd	.LC55(%rip), %xmm7
	leaq	(%rbx,%r14), %rax
	leaq	(%rax,%r12), %rdx
	vdivsd	%xmm0, %xmm5, %xmm0
	vmovsd	%xmm7, -208(%rbp)
	vsubsd	%xmm0, %xmm7, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vbroadcastsd	%xmm0, %ymm2
	vmovddup	%xmm0, %xmm3
	vmovsd	%xmm0, -216(%rbp)
	vmulsd	%xmm1, %xmm0, %xmm4
	vunpcklpd	%xmm0, %xmm1, %xmm1
	vmulpd	%xmm3, %xmm1, %xmm3
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovupd	%xmm3, -232(%rbp)
	vunpcklpd	%xmm4, %xmm0, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovupd	%ymm0, -264(%rbp)
	cmpq	%rdx, %rax
	je	.L378
	.p2align 4,,10
	.p2align 3
.L775:
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L775
.L378:
	decl	%edi
	jne	.L381
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movabsq	$-3689348814741910323, %rdx
	movq	%rax, -368(%rbp)
	movq	%r15, %rax
	mulq	%rdx
	vxorpd	%xmm7, %xmm7, %xmm7
	movq	%r15, %r10
	movq	%rdx, %rsi
	shrq	$2, %rsi
	leaq	1(%rsi), %rax
	vcvtsi2sdq	%rax, %xmm7, %xmm7
	subq	%rsi, %r10
	movq	%r10, %r13
	leaq	0(,%rsi,8), %r11
	vdivsd	%xmm7, %xmm5, %xmm7
	vmovsd	.LC55(%rip), %xmm5
	movl	$1, %r14d
	andl	$7, %r13d
	vmovsd	-296(%rbp), %xmm10
	shlx	%r13d, %r14d, %eax
	movl	$100, %r9d
	decl	%eax
	leaq	(%rbx,%r11), %rdi
	kmovb	%eax, %k2
	vsubsd	%xmm7, %xmm5, %xmm3
	.p2align 4,,10
	.p2align 3
.L395:
	movq	%rsi, %rax
	andq	$-8, %rax
	je	.L382
	leaq	(%rbx,%rax,8), %r8
	cmpq	%r8, %rbx
	je	.L481
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm4
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm5
	vmovapd	%zmm4, %zmm6
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	vxorpd	%xmm1, %xmm1, %xmm1
	.p2align 4,,10
	.p2align 3
.L384:
	vmovupd	(%rdx), %zmm0
	addq	$64, %rdx
	vandpd	%zmm6, %zmm0, %zmm2
	vpcmpeqq	%zmm4, %zmm2, %k1
	vptestmq	%zmm5, %zmm0, %k1{%k1}
	kmovb	%k1, %r12d
	knotb	%k1, %k1
	popcntl	%r12d, %r12d
	vaddpd	%zmm0, %zmm1, %zmm1{%k1}
	subq	%r12, %rcx
	cmpq	%rdx, %r8
	jne	.L384
.L383:
	movl	%esi, %eax
	andl	$7, %eax
	shlx	%eax, %r14d, %eax
	decl	%eax
	kmovb	%eax, %k6
	vmovupd	(%rdx), %zmm0{%k6}{z}
	vandpd	%zmm4, %zmm0, %zmm2
	vpcmpeqq	%zmm4, %zmm2, %k1
	vmovapd	%zmm1, %zmm2
	vptestmq	%zmm5, %zmm0, %k1{%k1}
	kmovb	%k1, %edx
	knotb	%k1, %k1
	vaddpd	%zmm0, %zmm1, %zmm2{%k1}
	popcntl	%edx, %edx
	subq	%rdx, %rcx
	vextractf64x4	$0x1, %zmm2, %ymm0
	vaddpd	%ymm2, %ymm0, %ymm0
	vextractf64x2	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm6
.L385:
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtusi2sdq	%rcx, %xmm5, %xmm0
	vdivsd	%xmm0, %xmm6, %xmm6
	testq	$-32, %r10
	je	.L904
	vmulsd	%xmm3, %xmm3, %xmm2
	movq	.LC55(%rip), %rax
	movq	%r10, %rdx
	movq	%rax, -208(%rbp)
	andq	$-8, %rdx
	vmulsd	%xmm2, %xmm3, %xmm8
	vunpcklpd	%xmm3, %xmm2, %xmm2
	leaq	(%rbx,%r11), %rax
	leaq	(%rax,%rdx,8), %rdx
	vmulsd	%xmm8, %xmm3, %xmm0
	vmulsd	%xmm0, %xmm3, %xmm5
	vunpcklpd	%xmm8, %xmm0, %xmm0
	vinsertf128	$0x1, %xmm2, %ymm0, %ymm0
	vmovapd	%ymm0, -240(%rbp)
	vmulsd	.LC57(%rip), %xmm6, %xmm0
	vmulsd	%xmm5, %xmm3, %xmm9
	vbroadcastsd	%xmm7, %zmm2
	vbroadcastsd	%xmm0, %zmm0
	vmulsd	%xmm9, %xmm3, %xmm1
	vunpcklpd	%xmm5, %xmm9, %xmm5
	vmulsd	%xmm1, %xmm3, %xmm4
	vunpcklpd	%xmm1, %xmm4, %xmm1
	vinsertf128	$0x1, %xmm5, %ymm1, %ymm1
	vmovapd	%ymm1, -272(%rbp)
	vmulpd	-264(%rbp), %zmm2, %zmm2
	vbroadcastsd	%xmm4, %zmm4
	cmpq	%rdx, %rax
	je	.L392
	.p2align 4,,10
	.p2align 3
.L393:
	vmulpd	(%rax), %zmm2, %zmm1
	addq	$64, %rax
	vfmadd132pd	%zmm4, %zmm1, %zmm0
	cmpq	%rax, %rdx
	jne	.L393
.L392:
	vmovupd	(%rax), %zmm1{%k2}{z}
	vmulpd	%zmm1, %zmm2, %zmm2
	vfmadd132pd	%zmm4, %zmm2, %zmm0
	vextractf64x4	$0x1, %zmm0, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vextractf64x2	$0x1, %ymm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vhaddpd	%xmm0, %xmm0, %xmm0
	vdivsd	-272(%rbp,%r13,8), %xmm0, %xmm6
.L391:
	decl	%r9d
	jne	.L395
	vmovq	%xmm6, %r12
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC58, %esi
	movq	%rax, %r13
	movl	$_ZSt4cout, %edi
	vzeroupper
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r12, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r13, %rsi
	movq	%rax, %rdi
	subq	-368(%rbp), %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E.isra.0
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %rcx
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L484
	vxorpd	%xmm4, %xmm4, %xmm4
	movq	-304(%rbp), %rsi
	movq	%rcx, %rdx
	vmovsd	%xmm4, %xmm4, %xmm6
	vmovsd	%xmm4, %xmm4, %xmm3
	vmovsd	%xmm4, %xmm4, %xmm5
	xorl	%eax, %eax
.L399:
	vmovsd	(%rbx,%rax,8), %xmm0
	vmovsd	(%rsi,%rax,8), %xmm2
	vmulsd	%xmm2, %xmm0, %xmm1
	vucomisd	%xmm1, %xmm1
	jp	.L905
	vfmadd231sd	%xmm0, %xmm0, %xmm4
	vaddsd	%xmm1, %xmm5, %xmm5
	vaddsd	%xmm0, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm6, %xmm6
.L398:
	incq	%rax
	cmpq	%rax, %rcx
	jne	.L399
.L396:
	vmulsd	%xmm3, %xmm6, %xmm6
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm3, %xmm3, %xmm3
	vcvtusi2sdq	%rdx, %xmm7, %xmm0
	vfmsub132sd	%xmm0, %xmm6, %xmm5
	vfmsub132sd	%xmm0, %xmm3, %xmm4
	vdivsd	%xmm4, %xmm5, %xmm7
	vmovq	%xmm7, %r12
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC59, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r13
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%r12, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r13, %rsi
	movq	%rax, %rdi
	subq	%r14, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	-288(%rbp), %r15
	movq	%r15, %rdx
	andq	$-8, %rdx
	je	.L400
	xorl	%eax, %eax
.L782:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L782
.L400:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%r15, %rcx
	movq	%rax, %r12
	andq	$-8, %rcx
	je	.L906
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vxorpd	%xmm4, %xmm4, %xmm4
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	-304(%rbp), %rdi
	vmovapd	%zmm0, %zmm11
	movq	%r15, %rsi
	vmovapd	%zmm4, %zmm5
	vmovapd	%zmm4, %zmm6
	vmovapd	%zmm4, %zmm7
	xorl	%eax, %eax
.L405:
	vmovupd	(%rbx,%rax,8), %zmm2
	vmovupd	(%rdi,%rax,8), %zmm8
	vmulpd	%zmm2, %zmm2, %zmm9
	vmulpd	%zmm8, %zmm2, %zmm3
	addq	$8, %rax
	vandpd	%zmm11, %zmm3, %zmm10
	vpcmpeqq	%zmm0, %zmm10, %k1
	vptestmq	%zmm1, %zmm3, %k1{%k1}
	kmovb	%k1, %edx
	knotb	%k1, %k1
	popcntl	%edx, %edx
	vaddpd	%zmm2, %zmm7, %zmm7{%k1}
	vaddpd	%zmm8, %zmm6, %zmm6{%k1}
	vaddpd	%zmm9, %zmm5, %zmm5{%k1}
	vaddpd	%zmm3, %zmm4, %zmm4{%k1}
	subq	%rdx, %rsi
	cmpq	%rax, %rcx
	jne	.L405
	andl	$7, %r15d
	movl	$1, %eax
	shlx	%r15d, %eax, %eax
	decl	%eax
	kmovb	%eax, %k2
	movq	-304(%rbp), %rax
	salq	$3, %rcx
	vmovupd	(%rbx,%rcx), %zmm2{%k2}{z}
	vmovupd	(%rax,%rcx), %zmm9{%k2}{z}
	vmulpd	%zmm2, %zmm2, %zmm10
	vmulpd	%zmm9, %zmm2, %zmm8
	xorl	%edx, %edx
	vandpd	%zmm0, %zmm8, %zmm3
	vpcmpeqq	%zmm0, %zmm3, %k1
	vptestmq	%zmm1, %zmm8, %k1{%k1}
	kmovb	%k1, %eax
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm2, %zmm7, %zmm7{%k1}
	vaddpd	%zmm9, %zmm6, %zmm6{%k1}
	vaddpd	%zmm10, %zmm5, %zmm5{%k1}
	vextractf64x4	$0x1, %zmm7, %ymm1
	vmovapd	%zmm6, %zmm3
	vaddpd	%ymm7, %ymm1, %ymm1
	vextractf64x4	$0x1, %zmm3, %ymm2
	vmovapd	%zmm5, %zmm6
	vaddpd	%ymm3, %ymm2, %ymm2
	vmovapd	%zmm4, %zmm5
	vaddpd	%zmm8, %zmm4, %zmm5{%k1}
	vextractf64x2	$0x1, %ymm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vextractf64x2	$0x1, %ymm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm2
	vextractf64x4	$0x1, %zmm5, %ymm3
	vaddpd	%ymm5, %ymm3, %ymm3
	vhaddpd	%xmm0, %xmm0, %xmm0
	vhaddpd	%xmm2, %xmm2, %xmm2
	vextractf64x2	$0x1, %ymm3, %xmm1
	popcntl	%eax, %edx
	vaddpd	%xmm3, %xmm1, %xmm1
	movq	%rsi, %rax
	vmulsd	%xmm2, %xmm0, %xmm2
	subq	%rdx, %rax
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rax, %xmm7, %xmm3
	vextractf64x4	$0x1, %zmm6, %ymm4
	vaddpd	%ymm6, %ymm4, %ymm4
	vhaddpd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm0, %xmm0
	vfmsub132sd	%xmm3, %xmm2, %xmm1
	vextractf64x2	$0x1, %ymm4, %xmm2
	vaddpd	%xmm4, %xmm2, %xmm2
	vhaddpd	%xmm2, %xmm2, %xmm2
	vfmsub132sd	%xmm2, %xmm0, %xmm3
	vdivsd	%xmm3, %xmm1, %xmm7
	vmovq	%xmm7, %rbx
	vzeroupper
.L406:
#APP
# 14 "time_test.cpp" 1
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$.LC60, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %r13
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC10, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	vmovq	%rbx, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	%rax, %rdi
	movl	$.LC11, %esi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r13, %rsi
	movq	%rax, %rdi
	subq	%r12, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	leaq	-280(%rbp), %rdi
	call	_ZNSsD1Ev
	addq	$384, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	xorl	%eax, %eax
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L903:
	.cfi_restore_state
	decq	%r9
	jmp	.L366
	.p2align 4,,10
	.p2align 3
.L904:
	cmpq	%rsi, %r15
	je	.L391
	leaq	(%rbx,%r15,8), %rdx
	leaq	(%rbx,%r11), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	subq	$8, %rcx
	shrq	$3, %rcx
	incq	%rcx
	andl	$7, %ecx
	je	.L394
	cmpq	$1, %rcx
	je	.L776
	cmpq	$2, %rcx
	je	.L777
	cmpq	$3, %rcx
	je	.L778
	cmpq	$4, %rcx
	je	.L779
	cmpq	$5, %rcx
	je	.L780
	cmpq	$6, %rcx
	je	.L781
	vmulsd	(%rax), %xmm7, %xmm0
	addq	$8, %rax
	vfmadd132sd	%xmm3, %xmm0, %xmm6
.L781:
	vmulsd	(%rax), %xmm7, %xmm0
	addq	$8, %rax
	vfmadd132sd	%xmm3, %xmm0, %xmm6
.L780:
	vmulsd	(%rax), %xmm7, %xmm0
	addq	$8, %rax
	vfmadd132sd	%xmm3, %xmm0, %xmm6
.L779:
	vmulsd	(%rax), %xmm7, %xmm0
	addq	$8, %rax
	vfmadd132sd	%xmm3, %xmm0, %xmm6
.L778:
	vmulsd	(%rax), %xmm7, %xmm0
	addq	$8, %rax
	vfmadd132sd	%xmm3, %xmm0, %xmm6
.L777:
	vmulsd	(%rax), %xmm7, %xmm0
	addq	$8, %rax
	vfmadd132sd	%xmm3, %xmm0, %xmm6
.L776:
	vmulsd	(%rax), %xmm7, %xmm0
	addq	$8, %rax
	vfmadd132sd	%xmm3, %xmm0, %xmm6
	cmpq	%rdx, %rax
	je	.L391
.L394:
	vmulsd	(%rax), %xmm7, %xmm0
	addq	$64, %rax
	vfmadd132sd	%xmm3, %xmm0, %xmm6
	vmulsd	-56(%rax), %xmm7, %xmm0
	vfmadd132sd	%xmm3, %xmm0, %xmm6
	vmulsd	-48(%rax), %xmm7, %xmm0
	vfmadd132sd	%xmm3, %xmm0, %xmm6
	vmulsd	-40(%rax), %xmm7, %xmm0
	vfmadd132sd	%xmm3, %xmm0, %xmm6
	vmulsd	-32(%rax), %xmm7, %xmm0
	vfmadd132sd	%xmm3, %xmm0, %xmm6
	vmulsd	-24(%rax), %xmm7, %xmm0
	vfmadd132sd	%xmm3, %xmm0, %xmm6
	vmulsd	-16(%rax), %xmm7, %xmm0
	vfmadd132sd	%xmm3, %xmm0, %xmm6
	vmulsd	-8(%rax), %xmm7, %xmm0
	vfmadd132sd	%xmm3, %xmm0, %xmm6
	cmpq	%rdx, %rax
	jne	.L394
	jmp	.L391
	.p2align 4,,10
	.p2align 3
.L382:
	movq	%rsi, %rcx
	cmpq	%rdi, %rbx
	je	.L482
	movq	%rbx, %rax
	vmovsd	%xmm10, %xmm10, %xmm6
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L386:
	vaddsd	%xmm0, %xmm6, %xmm6
.L387:
	addq	$8, %rax
	cmpq	%rax, %rdi
	je	.L385
.L388:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jnp	.L386
	decq	%rcx
	jmp	.L387
	.p2align 4,,10
	.p2align 3
.L371:
	cmpq	%rsi, %rbx
	je	.L374
	movq	%rbx, %rax
	.p2align 4,,10
	.p2align 3
.L774:
	addq	$8, %rax
	cmpq	%rax, %rsi
	jne	.L774
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L477:
	vmovsd	%xmm4, %xmm4, %xmm1
	jmp	.L364
.L481:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm4
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm5
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.L383
.L482:
	vmovsd	%xmm10, %xmm10, %xmm6
	jmp	.L385
.L901:
	andl	$7, %r15d
	movl	$1, %eax
	shlx	%r15d, %eax, %eax
	salq	$3, %r13
	leal	-1(%rax), %r14d
	kmovb	%r14d, %k7
	vmovupd	(%rbx,%r13), %zmm0{%k7}{z}
	movzbl	_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip), %eax
	testb	%al, %al
	je	.L907
.L361:
	vpsrlq	$52, %zmm0, %zmm3
	vpsubq	_ZN9FAST_MATHL7exp_subE(%rip), %zmm3, %zmm3
	vmovdqa64	_ZN9FAST_MATHL8exp_zeroE(%rip), %zmm1
	vpcmpeqq	_ZN9FAST_MATHL7exp_infE(%rip), %zmm3, %k2
	vptestnmq	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0, %k4
	vpmovq2m	%zmm0, %k1
	vptestnmq	%zmm1, %zmm0, %k3{%k2}
	vandpd	%zmm1, %zmm0, %zmm0
	vmovapd	_ZN9FAST_MATHL7avx_oneE(%rip), %zmm2
	vorpd	_ZN9FAST_MATHL7exp_setE(%rip), %zmm0, %zmm0
	vcvtqq2pd	%zmm3, %zmm3
	vsubpd	%zmm2, %zmm0, %zmm1
	vaddpd	%zmm2, %zmm0, %zmm0
	movl	$4095, %eax
	salq	$52, %rax
	vdivpd	%zmm0, %zmm1, %zmm1
	vmulpd	%zmm1, %zmm1, %zmm0
	korb	%k2, %k1, %k1
	kmovb	%r14d, %k7
	vmulpd	%zmm0, %zmm1, %zmm2
	vmulpd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip), %zmm1, %zmm1
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+64(%rip), %zmm2, %zmm1
	vmulpd	%zmm0, %zmm2, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+128(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+192(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+256(%rip), %zmm2, %zmm1
	vmulpd	%zmm0, %zmm2, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+320(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm0
	vfmadd132pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+384(%rip), %zmm1, %zmm0
	vaddpd	%zmm3, %zmm0, %zmm0
	vpbroadcastq	%rax, %zmm0{%k4}
	movabsq	$9221120237041090561, %rax
	vpbroadcastq	%rax, %zmm0{%k1}
	movl	$2047, %eax
	salq	$52, %rax
	vpbroadcastq	%rax, %zmm0{%k3}
	vmovupd	%zmm0, (%r12,%r13){%k7}
	vzeroupper
	jmp	.L363
.L475:
	xorl	%r14d, %r14d
	jmp	.L344
.L349:
	vpsrlq	$52, %zmm0, %zmm3
	vpsubq	_ZN9FAST_MATHL7exp_subE(%rip), %zmm3, %zmm3
	vmovdqa64	_ZN9FAST_MATHL8exp_zeroE(%rip), %zmm1
	vpcmpeqq	_ZN9FAST_MATHL7exp_infE(%rip), %zmm3, %k2
	vptestnmq	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0, %k4
	vpmovq2m	%zmm0, %k1
	vptestnmq	%zmm1, %zmm0, %k3{%k2}
	vandpd	%zmm1, %zmm0, %zmm0
	vmovapd	_ZN9FAST_MATHL7avx_oneE(%rip), %zmm2
	vorpd	_ZN9FAST_MATHL7exp_setE(%rip), %zmm0, %zmm0
	vcvtqq2pd	%zmm3, %zmm3
	vsubpd	%zmm2, %zmm0, %zmm1
	vaddpd	%zmm2, %zmm0, %zmm0
	movabsq	$-4503599627370496, %rax
	korb	%k2, %k1, %k1
	vdivpd	%zmm0, %zmm1, %zmm1
	vmulpd	%zmm1, %zmm1, %zmm0
	vmulpd	%zmm0, %zmm1, %zmm2
	vmulpd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip), %zmm1, %zmm1
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+64(%rip), %zmm2, %zmm1
	vmulpd	%zmm0, %zmm2, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+128(%rip), %zmm2, %zmm1
	vmulpd	%zmm0, %zmm2, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+192(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+256(%rip), %zmm2, %zmm1
	vmulpd	%zmm0, %zmm2, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+320(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm0
	vfmadd132pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+384(%rip), %zmm1, %zmm0
	vaddpd	%zmm3, %zmm0, %zmm0
	vpbroadcastq	%rax, %zmm0{%k4}
	movabsq	$9221120237041090561, %rax
	vpbroadcastq	%rax, %zmm0{%k1}
	movabsq	$9218868437227405312, %rax
	vpbroadcastq	%rax, %zmm0{%k3}
	vmovupd	%zmm0, (%r12,%r14,8)
	addq	$8, %r14
	cmpq	%r14, %r13
	je	.L908
.L344:
	vmovupd	(%rbx,%r14,8), %zmm0
	movzbl	_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip), %eax
	testb	%al, %al
	jne	.L349
	movl	$_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, %edi
	vmovapd	%zmm0, -368(%rbp)
	vzeroupper
	call	__cxa_guard_acquire
	testl	%eax, %eax
	vmovapd	-368(%rbp), %zmm0
	je	.L349
	vmovdqa64	.LC47(%rip), %zmm7
	movl	$_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, %edi
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip)
	vmovdqa64	.LC48(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+64(%rip)
	vmovdqa64	.LC49(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+128(%rip)
	vmovdqa64	.LC50(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+192(%rip)
	vmovdqa64	.LC51(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+256(%rip)
	vmovdqa64	.LC52(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+320(%rip)
	vmovdqa64	.LC53(%rip), %zmm7
	vmovdqa64	%zmm7, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+384(%rip)
	vzeroupper
	call	__cxa_guard_release
	vmovapd	-368(%rbp), %zmm0
	jmp	.L349
.L896:
	andl	$7, %r15d
	movl	$1, %eax
	shlx	%r15d, %eax, %eax
	leaq	0(,%r14,8), %r13
	leal	-1(%rax), %r15d
	vxorpd	%xmm7, %xmm7, %xmm7
	kmovb	%r15d, %k7
	vmovupd	(%rbx,%r13), %zmm7{%k7}
	vmovapd	%zmm7, -368(%rbp)
	movzbl	_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip), %eax
	testb	%al, %al
	je	.L909
.L336:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm3
	vmovapd	-368(%rbp), %zmm7
	vmovdqa64	_ZN9FAST_MATHL7exp_subE(%rip), %zmm1
	vpandq	%zmm7, %zmm3, %zmm0
	vpcmpeqq	%zmm3, %zmm0, %k3
	vpsrlq	$52, %zmm0, %zmm0
	vpcmpq	$5, %zmm1, %zmm0, %k1
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm2
	vpmovq2m	%zmm7, %k2
	vpsubq	%zmm1, %zmm0, %zmm4{%k1}{z}
	vporq	%zmm2, %zmm3, %zmm0
	vandpd	%zmm7, %zmm0, %zmm1
	vandpd	%zmm2, %zmm1, %zmm1{%k1}
	vpsllvq	%zmm4, %zmm1, %zmm0
	vptestmq	%zmm2, %zmm1, %k3{%k3}
	vpandq	%zmm3, %zmm0, %zmm5{%k1}{z}
	vmovapd	%zmm0, %zmm3
	vandpd	%zmm2, %zmm0, %zmm3{%k1}
	vmovapd	_ZN9FAST_MATHL7avx_oneE(%rip), %zmm0
	vmovapd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+64(%rip), %zmm2
	vorpd	%zmm0, %zmm3, %zmm3{%k1}
	vmovapd	%zmm3, %zmm1
	vsubpd	%zmm0, %zmm3, %zmm1{%k1}
	vpcmpq	$5, _ZN9FAST_MATHL8exp_flowE(%rip), %zmm4, %k4
	kandnb	%k1, %k2, %k5
	vsubpd	%zmm1, %zmm0, %zmm1{%k2}
	movl	$2047, %eax
	salq	$52, %rax
	vmulpd	%zmm1, %zmm1, %zmm3
	kandb	%k4, %k2, %k0
	kmovb	%r15d, %k7
	vfmadd213pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip), %zmm3, %zmm2
	vmulpd	%zmm3, %zmm3, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+128(%rip), %zmm0, %zmm2
	vmulpd	%zmm0, %zmm3, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+192(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+256(%rip), %zmm0, %zmm2
	vmulpd	%zmm0, %zmm3, %zmm0
	vfmadd231pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+320(%rip), %zmm0, %zmm2
	vmulpd	%zmm3, %zmm0, %zmm0
	vmovdqa64	_ZN9FAST_MATHL7exp_oneE(%rip), %zmm3
	vpsllvq	%zmm4, %zmm3, %zmm4
	vfmadd132pd	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+384(%rip), %zmm2, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vsubpd	%zmm1, %zmm0, %zmm0
	vpaddq	%zmm4, %zmm5, %zmm1
	vdivpd	%zmm0, %zmm2, %zmm2
	vmovdqa64	%zmm2, %zmm0
	vpaddq	%zmm2, %zmm1, %zmm0{%k5}
	kandb	%k1, %k2, %k5
	vpsubq	%zmm1, %zmm0, %zmm0{%k5}
	vptestnmq	_ZN9FAST_MATHL10exp_mask10E(%rip), %zmm0, %k1{%k1}
	vpsubq	%zmm3, %zmm0, %zmm0{%k2}
	vpbroadcastq	%rax, %zmm0{%k4}
	xorl	%eax, %eax
	korb	%k1, %k0, %k1
	vpbroadcastq	%rax, %zmm0{%k1}
	movabsq	$9221120237041090561, %rax
	vpbroadcastq	%rax, %zmm0{%k3}
	vmovupd	%zmm0, (%r12,%r13){%k7}
	vzeroupper
	jmp	.L338
.L908:
	andl	$7, %r15d
	movl	$1, %eax
	shlx	%r15d, %eax, %eax
	salq	$3, %r13
	leal	-1(%rax), %r14d
	kmovb	%r14d, %k7
	vmovupd	(%rbx,%r13), %zmm0{%k7}{z}
	movzbl	_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip), %eax
	testb	%al, %al
	je	.L910
.L352:
	vpsrlq	$52, %zmm0, %zmm3
	vpsubq	_ZN9FAST_MATHL7exp_subE(%rip), %zmm3, %zmm3
	vmovdqa64	_ZN9FAST_MATHL8exp_zeroE(%rip), %zmm1
	vpcmpeqq	_ZN9FAST_MATHL7exp_infE(%rip), %zmm3, %k2
	vptestnmq	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0, %k4
	vpmovq2m	%zmm0, %k1
	vptestnmq	%zmm1, %zmm0, %k3{%k2}
	vandpd	%zmm1, %zmm0, %zmm0
	vmovapd	_ZN9FAST_MATHL7avx_oneE(%rip), %zmm2
	vorpd	_ZN9FAST_MATHL7exp_setE(%rip), %zmm0, %zmm0
	vcvtqq2pd	%zmm3, %zmm3
	vsubpd	%zmm2, %zmm0, %zmm1
	vaddpd	%zmm2, %zmm0, %zmm0
	movl	$4095, %eax
	salq	$52, %rax
	vdivpd	%zmm0, %zmm1, %zmm1
	vmulpd	%zmm1, %zmm1, %zmm0
	korb	%k2, %k1, %k1
	kmovb	%r14d, %k7
	vmulpd	%zmm0, %zmm1, %zmm2
	vmulpd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip), %zmm1, %zmm1
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+64(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+128(%rip), %zmm2, %zmm1
	vmulpd	%zmm0, %zmm2, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+192(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+256(%rip), %zmm2, %zmm1
	vmulpd	%zmm0, %zmm2, %zmm2
	vfmadd231pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+320(%rip), %zmm2, %zmm1
	vmulpd	%zmm2, %zmm0, %zmm0
	vfmadd132pd	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+384(%rip), %zmm1, %zmm0
	vaddpd	%zmm3, %zmm0, %zmm0
	vpbroadcastq	%rax, %zmm0{%k4}
	movabsq	$9221120237041090561, %rax
	vpbroadcastq	%rax, %zmm0{%k1}
	movl	$2047, %eax
	salq	$52, %rax
	vpbroadcastq	%rax, %zmm0{%k3}
	vmovupd	%zmm0, (%r12,%r13){%k7}
	movq	-288(%rbp), %r15
	jmp	.L354
.L218:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vxorpd	%xmm5, %xmm5, %xmm5
	movq	%rcx, %rdi
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	-304(%rbp), %r8
	andq	$-8, %rdi
	vmovapd	%zmm0, %zmm13
	movq	%rcx, %rsi
	vmovapd	%zmm5, %zmm6
	vmovapd	%zmm5, %zmm7
	vmovapd	%zmm5, %zmm8
	vmovapd	%zmm5, %zmm9
	xorl	%eax, %eax
.L221:
	vmovupd	(%rbx,%rax,8), %zmm3
	vmovupd	(%r8,%rax,8), %zmm2
	vmulpd	%zmm3, %zmm3, %zmm11
	vmulpd	%zmm2, %zmm3, %zmm4
	vmulpd	%zmm2, %zmm2, %zmm10
	addq	$8, %rax
	vandpd	%zmm13, %zmm4, %zmm12
	vpcmpeqq	%zmm0, %zmm12, %k1
	vptestmq	%zmm1, %zmm4, %k1{%k1}
	kmovb	%k1, %edx
	knotb	%k1, %k1
	popcntl	%edx, %edx
	vaddpd	%zmm3, %zmm9, %zmm9{%k1}
	vaddpd	%zmm2, %zmm8, %zmm8{%k1}
	vaddpd	%zmm11, %zmm7, %zmm7{%k1}
	vaddpd	%zmm10, %zmm6, %zmm6{%k1}
	vaddpd	%zmm4, %zmm5, %zmm5{%k1}
	subq	%rdx, %rsi
	cmpq	%rax, %rdi
	jne	.L221
	andl	$7, %ecx
	movl	$1, %eax
	shlx	%ecx, %eax, %eax
	decl	%eax
	kmovb	%eax, %k2
	movq	-304(%rbp), %rax
	salq	$3, %rdi
	vmovupd	(%rax,%rdi), %zmm3{%k2}{z}
	vmovupd	(%rbx,%rdi), %zmm4{%k2}{z}
	vmulpd	%zmm3, %zmm3, %zmm11
	vmulpd	%zmm3, %zmm4, %zmm10
	vmulpd	%zmm4, %zmm4, %zmm12
	vandpd	%zmm0, %zmm10, %zmm2
	vpcmpeqq	%zmm0, %zmm2, %k1
	vmovapd	%zmm9, %zmm2
	vptestmq	%zmm1, %zmm10, %k1{%k1}
	vmovapd	%zmm8, %zmm1
	kmovb	%k1, %eax
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm4, %zmm9, %zmm2{%k1}
	vaddpd	%zmm3, %zmm8, %zmm1{%k1}
	vaddpd	%zmm10, %zmm5, %zmm5{%k1}
	vextractf64x4	$0x1, %zmm2, %ymm0
	vaddpd	%ymm2, %ymm0, %ymm0
	vextractf64x4	$0x1, %zmm5, %ymm3
	vaddpd	%ymm5, %ymm3, %ymm3
	vextractf64x2	$0x1, %ymm0, %xmm2
	vaddpd	%xmm0, %xmm2, %xmm2
	vextractf64x4	$0x1, %zmm1, %ymm0
	vaddpd	%ymm1, %ymm0, %ymm0
	vhaddpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm5, %xmm5, %xmm5
	vextractf64x2	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vextractf64x2	$0x1, %ymm3, %xmm0
	vaddpd	%xmm3, %xmm0, %xmm0
	vhaddpd	%xmm1, %xmm1, %xmm1
	popcntl	%eax, %eax
	subq	%rax, %rsi
	vmulsd	%xmm1, %xmm2, %xmm4
	vcvtusi2sdq	%rsi, %xmm5, %xmm3
	vaddpd	%zmm12, %zmm7, %zmm7{%k1}
	vhaddpd	%xmm0, %xmm0, %xmm0
	vmulsd	%xmm2, %xmm2, %xmm2
	vmovapd	%zmm7, %zmm8
	vfmsub132sd	%xmm3, %xmm4, %xmm0
	vextractf64x4	$0x1, %zmm8, %ymm4
	vaddpd	%ymm8, %ymm4, %ymm4
	vmovapd	%zmm6, %zmm7
	vaddpd	%zmm11, %zmm6, %zmm7{%k1}
	vmovq	%xmm0, %r13
	vextractf64x2	$0x1, %ymm4, %xmm0
	vaddpd	%xmm4, %xmm0, %xmm0
	vextractf64x4	$0x1, %zmm7, %ymm4
	vaddpd	%ymm7, %ymm4, %ymm4
	vhaddpd	%xmm0, %xmm0, %xmm0
	vmulsd	%xmm1, %xmm1, %xmm1
	vfmsub132sd	%xmm3, %xmm2, %xmm0
	vextractf64x2	$0x1, %ymm4, %xmm2
	vaddpd	%xmm4, %xmm2, %xmm2
	vhaddpd	%xmm2, %xmm2, %xmm2
	vfmsub132sd	%xmm2, %xmm1, %xmm3
	vmulsd	%xmm3, %xmm0, %xmm0
	vzeroupper
	call	sqrt
	vmovq	%r13, %xmm7
	vdivsd	%xmm0, %xmm7, %xmm7
	vmovq	%xmm7, %r13
	jmp	.L222
.L211:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vxorpd	%xmm4, %xmm4, %xmm4
	movq	%rcx, %rdi
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	-304(%rbp), %r8
	andq	$-8, %rdi
	vmovapd	%zmm0, %zmm12
	movq	%rcx, %rsi
	vmovapd	%zmm4, %zmm5
	vmovapd	%zmm4, %zmm6
	vmovapd	%zmm4, %zmm7
	xorl	%eax, %eax
.L214:
	vmovupd	(%rbx,%rax,8), %zmm3
	vmovupd	(%r8,%rax,8), %zmm2
	vmulpd	%zmm3, %zmm3, %zmm10
	vmulpd	%zmm2, %zmm3, %zmm8
	vmulpd	%zmm2, %zmm2, %zmm9
	addq	$8, %rax
	vandpd	%zmm12, %zmm8, %zmm11
	vpcmpeqq	%zmm0, %zmm11, %k1
	vptestmq	%zmm1, %zmm8, %k1{%k1}
	kmovb	%k1, %edx
	knotb	%k1, %k1
	popcntl	%edx, %edx
	vaddpd	%zmm3, %zmm7, %zmm7{%k1}
	vaddpd	%zmm2, %zmm6, %zmm6{%k1}
	vaddpd	%zmm10, %zmm5, %zmm5{%k1}
	vaddpd	%zmm9, %zmm4, %zmm4{%k1}
	subq	%rdx, %rsi
	cmpq	%rax, %rdi
	jne	.L214
	andl	$7, %ecx
	movl	$1, %eax
	shlx	%ecx, %eax, %eax
	decl	%eax
	kmovb	%eax, %k2
	movq	-304(%rbp), %rax
	salq	$3, %rdi
	vmovupd	(%rax,%rdi), %zmm2{%k2}{z}
	vmovupd	(%rbx,%rdi), %zmm3{%k2}{z}
	vmulpd	%zmm2, %zmm2, %zmm9
	vmulpd	%zmm2, %zmm3, %zmm8
	vmulpd	%zmm3, %zmm3, %zmm10
	xorl	%edx, %edx
	vandpd	%zmm0, %zmm8, %zmm11
	vpcmpeqq	%zmm0, %zmm11, %k1
	vptestmq	%zmm1, %zmm8, %k1{%k1}
	kmovb	%k1, %eax
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm3, %zmm7, %zmm7{%k1}
	vaddpd	%zmm2, %zmm6, %zmm6{%k1}
	vaddpd	%zmm10, %zmm5, %zmm5{%k1}
	vextractf64x4	$0x1, %zmm7, %ymm1
	vaddpd	%ymm7, %ymm1, %ymm1
	vmovapd	%zmm6, %zmm3
	vmovapd	%zmm5, %zmm6
	vextractf64x2	$0x1, %ymm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vmovapd	%zmm4, %zmm5
	vextractf64x4	$0x1, %zmm3, %ymm1
	vaddpd	%zmm9, %zmm4, %zmm5{%k1}
	vaddpd	%ymm3, %ymm1, %ymm1
	vextractf64x4	$0x1, %zmm6, %ymm4
	vaddpd	%ymm6, %ymm4, %ymm4
	vhaddpd	%xmm0, %xmm0, %xmm2
	vextractf64x2	$0x1, %ymm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm1
	vextractf64x2	$0x1, %ymm4, %xmm0
	popcntl	%eax, %edx
	vaddpd	%xmm4, %xmm0, %xmm0
	movq	%rsi, %rax
	vmulsd	%xmm2, %xmm2, %xmm2
	subq	%rdx, %rax
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rax, %xmm7, %xmm3
	vextractf64x4	$0x1, %zmm5, %ymm4
	vaddpd	%ymm5, %ymm4, %ymm4
	vhaddpd	%xmm0, %xmm0, %xmm0
	vhaddpd	%xmm1, %xmm1, %xmm1
	vfmsub132sd	%xmm3, %xmm2, %xmm0
	vextractf64x2	$0x1, %ymm4, %xmm2
	vaddpd	%xmm4, %xmm2, %xmm2
	vmulsd	%xmm1, %xmm1, %xmm1
	vhaddpd	%xmm2, %xmm2, %xmm2
	vfmsub132sd	%xmm2, %xmm1, %xmm3
	vmulsd	%xmm3, %xmm0, %xmm0
	vzeroupper
	call	sqrt
	jmp	.L215
.L193:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	-304(%rbp), %rdi
	vmovapd	%zmm0, %zmm9
	movq	%r15, %rsi
	vmovapd	%zmm3, %zmm4
	vmovapd	%zmm3, %zmm5
	xorl	%edx, %edx
.L196:
	vmovupd	(%rbx,%rdx,8), %zmm7
	vmovupd	(%rdi,%rdx,8), %zmm6
	addq	$8, %rdx
	vmulpd	%zmm6, %zmm7, %zmm2
	vandpd	%zmm9, %zmm2, %zmm8
	vpcmpeqq	%zmm0, %zmm8, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kmovb	%k1, %ecx
	knotb	%k1, %k1
	popcntl	%ecx, %ecx
	vaddpd	%zmm7, %zmm5, %zmm5{%k1}
	vaddpd	%zmm6, %zmm4, %zmm4{%k1}
	vaddpd	%zmm2, %zmm3, %zmm3{%k1}
	subq	%rcx, %rsi
	cmpq	%rdx, %rax
	jne	.L196
	andl	$7, %r15d
	movl	$1, %edx
	shlx	%r15d, %edx, %edx
	leal	-1(%rdx), %edi
	kmovb	%edi, %k2
	movq	-304(%rbp), %rdi
	salq	$3, %rax
	vmovupd	(%rbx,%rax), %zmm7{%k2}{z}
	vmovupd	(%rdi,%rax), %zmm6{%k2}{z}
	vmulpd	%zmm6, %zmm7, %zmm2
	vandpd	%zmm0, %zmm2, %zmm8
	vpcmpeqq	%zmm0, %zmm8, %k1
	vptestmq	%zmm1, %zmm2, %k1{%k1}
	kmovb	%k1, %eax
	kandnb	%k2, %k1, %k1
	vaddpd	%zmm7, %zmm5, %zmm5{%k1}
	popcntl	%eax, %eax
	vxorpd	%xmm7, %xmm7, %xmm7
	vmovapd	%zmm5, %zmm0
	vmovapd	%zmm4, %zmm5
	vaddpd	%zmm6, %zmm4, %zmm5{%k1}
	vextractf64x4	$0x1, %zmm0, %ymm1
	vmovapd	%zmm3, %zmm4
	vaddpd	%zmm2, %zmm3, %zmm4{%k1}
	vaddpd	%ymm0, %ymm1, %ymm1
	vextractf64x4	$0x1, %zmm5, %ymm2
	vaddpd	%ymm5, %ymm2, %ymm2
	vextractf64x2	$0x1, %ymm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm1
	vextractf64x2	$0x1, %ymm2, %xmm0
	vaddpd	%xmm2, %xmm0, %xmm2
	vhaddpd	%xmm1, %xmm1, %xmm1
	subq	%rax, %rsi
	vhaddpd	%xmm2, %xmm2, %xmm2
	vextractf64x4	$0x1, %zmm4, %ymm3
	vaddpd	%ymm4, %ymm3, %ymm3
	vmulsd	%xmm2, %xmm1, %xmm1
	vcvtusi2sdq	%rsi, %xmm7, %xmm2
	vextractf64x2	$0x1, %ymm3, %xmm0
	vaddpd	%xmm3, %xmm0, %xmm0
	movq	%rsi, %rdx
	vdivsd	%xmm2, %xmm1, %xmm1
	vhaddpd	%xmm0, %xmm0, %xmm0
	vsubsd	%xmm1, %xmm0, %xmm0
	vzeroupper
	jmp	.L197
.L879:
	decq	%rdx
	jmp	.L189
.L884:
	decq	%rdx
	jmp	.L206
.L882:
	decq	%rdx
	jmp	.L202
.L905:
	decq	%rdx
	jmp	.L398
.L96:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movq	48(%rax), %rdx
	movl	$10, %eax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rdx
	je	.L97
	movl	$10, %esi
	movq	%r13, %rdi
	call	*%rdx
	jmp	.L97
.L42:
	leaq	(%rbx,%r15,8), %rdx
	cmpq	%rdx, %rbx
	je	.L424
	movq	-368(%rbp), %r13
	movq	%rbx, %rax
.L48:
	vmovsd	(%rax), %xmm0
	vmovq	%r13, %xmm7
	vminsd	%xmm7, %xmm0, %xmm7
	addq	$8, %rax
	vmovq	%xmm7, %r13
	cmpq	%rax, %rdx
	jne	.L48
	jmp	.L45
.L297:
	leaq	(%rbx,%r15,8), %rdx
	cmpq	%rdx, %rbx
	je	.L302
	movq	%rbx, %rax
	vxorpd	%xmm5, %xmm5, %xmm5
.L305:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L911
	vaddsd	%xmm0, %xmm5, %xmm5
.L304:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L305
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rcx, %xmm7, %xmm7
	movq	%rbx, %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	vdivsd	%xmm7, %xmm5, %xmm5
.L310:
	vmovsd	(%rax), %xmm0
	vsubsd	%xmm5, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L309
	vaddsd	%xmm0, %xmm4, %xmm4
.L309:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L310
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
.L311:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L313
	vaddsd	%xmm0, %xmm1, %xmm1
.L313:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L311
	jmp	.L312
.L261:
	leaq	(%rbx,%r15,8), %rdx
	cmpq	%rdx, %rbx
	je	.L266
	movq	%rbx, %rax
	vxorpd	%xmm4, %xmm4, %xmm4
.L269:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L912
	vaddsd	%xmm0, %xmm4, %xmm4
.L268:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L269
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rcx, %xmm7, %xmm6
	movq	%rbx, %rax
	vxorpd	%xmm7, %xmm7, %xmm7
	vdivsd	%xmm6, %xmm4, %xmm4
.L274:
	vmovsd	(%rax), %xmm0
	vsubsd	%xmm4, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L273
	vaddsd	%xmm0, %xmm7, %xmm7
.L273:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L274
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
.L275:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L277
	vaddsd	%xmm0, %xmm1, %xmm1
.L277:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L275
	jmp	.L276
.L245:
	leaq	(%rbx,%r15,8), %rdx
	cmpq	%rdx, %rbx
	je	.L250
	movq	%rbx, %rax
	vxorpd	%xmm3, %xmm3, %xmm3
.L253:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L913
	vaddsd	%xmm0, %xmm3, %xmm3
.L252:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L253
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rcx, %xmm7, %xmm5
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
	vdivsd	%xmm5, %xmm3, %xmm3
.L259:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L258
	vaddsd	%xmm0, %xmm1, %xmm1
.L258:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L259
	jmp	.L257
.L15:
	leaq	(%rbx,%r15,8), %rdx
	cmpq	%rdx, %rbx
	je	.L416
	movq	-296(%rbp), %r15
	movq	%rbx, %rax
.L20:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L19
	vmovq	%r15, %xmm7
	vaddsd	%xmm0, %xmm7, %xmm7
	vmovq	%xmm7, %r15
.L19:
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L20
	jmp	.L18
.L906:
	testq	%r15, %r15
	je	.L914
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	-304(%rbp), %rdx
	movq	%r15, %rax
	vmovsd	%xmm0, %xmm0, %xmm5
	vmovsd	%xmm0, %xmm0, %xmm2
	vmovsd	%xmm0, %xmm0, %xmm4
.L403:
	vmovsd	(%rbx,%rcx,8), %xmm1
	vmovsd	(%rdx,%rcx,8), %xmm6
	vmulsd	%xmm6, %xmm1, %xmm3
	vucomisd	%xmm3, %xmm3
	jp	.L915
	vfmadd231sd	%xmm1, %xmm1, %xmm0
	vaddsd	%xmm3, %xmm4, %xmm4
	vaddsd	%xmm1, %xmm2, %xmm2
	vaddsd	%xmm6, %xmm5, %xmm5
.L408:
	incq	%rcx
	cmpq	%rcx, %r15
	jne	.L403
.L404:
	vmulsd	%xmm2, %xmm5, %xmm5
	vxorpd	%xmm7, %xmm7, %xmm7
	vmulsd	%xmm2, %xmm2, %xmm2
	vcvtusi2sdq	%rax, %xmm7, %xmm1
	vfmsub132sd	%xmm1, %xmm5, %xmm4
	vfmsub132sd	%xmm1, %xmm2, %xmm0
	vdivsd	%xmm0, %xmm4, %xmm7
	vmovq	%xmm7, %rbx
	jmp	.L406
.L134:
	leaq	(%rbx,%r15,8), %rcx
	cmpq	%rcx, %rbx
	je	.L443
	movq	%rbx, %rdx
	vxorpd	%xmm3, %xmm3, %xmm3
.L142:
	vmovsd	(%rdx), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L916
	vaddsd	%xmm0, %xmm3, %xmm3
.L141:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.L142
	movq	%rbx, %rdx
	vxorpd	%xmm1, %xmm1, %xmm1
.L143:
	vmovsd	(%rdx), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L144
	vaddsd	%xmm0, %xmm1, %xmm1
.L144:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.L143
	jmp	.L139
.L173:
	leaq	(%rbx,%r15,8), %rcx
	cmpq	%rcx, %rbx
	je	.L451
	movq	%rbx, %rdx
	vxorpd	%xmm3, %xmm3, %xmm3
.L181:
	vmovsd	(%rdx), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L917
	vaddsd	%xmm0, %xmm3, %xmm3
.L180:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.L181
	movq	%rbx, %rdx
	vxorpd	%xmm1, %xmm1, %xmm1
.L182:
	vmovsd	(%rdx), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L183
	vaddsd	%xmm0, %xmm1, %xmm1
.L183:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.L182
	jmp	.L178
.L161:
	leaq	(%rbx,%r15,8), %rcx
	cmpq	%rcx, %rbx
	je	.L448
	movq	%rbx, %rax
	vxorpd	%xmm3, %xmm3, %xmm3
.L169:
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L918
	vaddsd	%xmm0, %xmm3, %xmm3
.L168:
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.L169
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
.L170:
	vmovsd	(%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L171
	vaddsd	%xmm0, %xmm1, %xmm1
.L171:
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.L170
	jmp	.L166
.L28:
	leaq	(%rbx,%r15,8), %rdx
	cmpq	%rdx, %rbx
	je	.L420
	movq	%rbx, %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L34
.L32:
	vaddsd	%xmm1, %xmm0, %xmm0
.L33:
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L31
.L34:
	vmovsd	(%rax), %xmm1
	vucomisd	%xmm1, %xmm1
	jnp	.L32
	decq	%rsi
	jmp	.L33
.L84:
	leaq	(%rbx,%r15,8), %rdx
	cmpq	%rdx, %rbx
	je	.L432
	movq	-368(%rbp), %r13
	movq	%rbx, %rax
.L90:
	vmovsd	(%rax), %xmm0
	vmovq	%r13, %xmm7
	vmaxsd	%xmm7, %xmm0, %xmm7
	addq	$8, %rax
	vmovq	%xmm7, %r13
	cmpq	%rax, %rdx
	jne	.L90
	jmp	.L87
.L918:
	decq	%rdx
	jmp	.L168
.L913:
	decq	%rcx
	jmp	.L252
.L912:
	decq	%rcx
	jmp	.L268
.L911:
	decq	%rcx
	jmp	.L304
.L917:
	decq	%rax
	jmp	.L180
.L916:
	decq	%rax
	jmp	.L141
.L867:
	vzeroupper
	jmp	.L120
.L866:
	vzeroupper
	jmp	.L58
.L887:
	decq	%rdx
	jmp	.L217
.L881:
	decq	%rdx
	jmp	.L199
.L889:
	decq	%rdx
	jmp	.L224
.L910:
	movl	$_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, %edi
	vmovapd	%zmm0, -368(%rbp)
	vzeroupper
	call	__cxa_guard_acquire
	testl	%eax, %eax
	vmovapd	-368(%rbp), %zmm0
	je	.L352
	vpbroadcastq	.LC71(%rip), %zmm1
	movl	$_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, %edi
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip)
	vpbroadcastq	.LC72(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+64(%rip)
	vpbroadcastq	.LC73(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+128(%rip)
	vpbroadcastq	.LC74(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+192(%rip)
	vpbroadcastq	.LC75(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+256(%rip)
	vpbroadcastq	.LC76(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+320(%rip)
	vpbroadcastq	.LC77(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+384(%rip)
	vzeroupper
	call	__cxa_guard_release
	vmovapd	-368(%rbp), %zmm0
	jmp	.L352
.L909:
	movl	$_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, %edi
	vzeroupper
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L336
	vpbroadcastq	.LC64(%rip), %zmm0
	movl	$_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, %edi
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip)
	vpbroadcastq	.LC65(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+64(%rip)
	vpbroadcastq	.LC66(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+128(%rip)
	vpbroadcastq	.LC67(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+192(%rip)
	vpbroadcastq	.LC68(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+256(%rip)
	vpbroadcastq	.LC69(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+320(%rip)
	vpbroadcastq	.LC70(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+384(%rip)
	vzeroupper
	call	__cxa_guard_release
	jmp	.L336
.L907:
	movl	$_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, %edi
	vmovapd	%zmm0, -432(%rbp)
	vzeroupper
	call	__cxa_guard_acquire
	testl	%eax, %eax
	vmovapd	-432(%rbp), %zmm0
	je	.L361
	vpbroadcastq	.LC71(%rip), %zmm1
	movl	$_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, %edi
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params(%rip)
	vpbroadcastq	.LC72(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+64(%rip)
	vpbroadcastq	.LC73(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+128(%rip)
	vpbroadcastq	.LC74(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+192(%rip)
	vpbroadcastq	.LC75(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+256(%rip)
	vpbroadcastq	.LC76(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+320(%rip)
	vpbroadcastq	.LC77(%rip), %zmm1
	vmovdqa64	%zmm1, _ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params+384(%rip)
	vzeroupper
	call	__cxa_guard_release
	vmovapd	-432(%rbp), %zmm0
	jmp	.L361
.L898:
	movl	$_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, %edi
	vzeroupper
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L327
	vpbroadcastq	.LC64(%rip), %zmm0
	movl	$_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, %edi
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params(%rip)
	vpbroadcastq	.LC65(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+64(%rip)
	vpbroadcastq	.LC66(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+128(%rip)
	vpbroadcastq	.LC67(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+192(%rip)
	vpbroadcastq	.LC68(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+256(%rip)
	vpbroadcastq	.LC69(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+320(%rip)
	vpbroadcastq	.LC70(%rip), %zmm0
	vmovdqa64	%zmm0, _ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params+384(%rip)
	vzeroupper
	call	__cxa_guard_release
	jmp	.L327
.L915:
	decq	%rax
	jmp	.L408
.L888:
	vxorpd	%xmm7, %xmm7, %xmm7
	xorl	%edx, %edx
	vmovsd	%xmm7, %xmm7, %xmm3
	vmovsd	%xmm7, %xmm7, %xmm4
	vmovsd	%xmm7, %xmm7, %xmm5
	vmovsd	%xmm7, %xmm7, %xmm6
	jmp	.L220
.L886:
	vxorpd	%xmm6, %xmm6, %xmm6
	xorl	%edx, %edx
	vmovsd	%xmm6, %xmm6, %xmm2
	vmovsd	%xmm6, %xmm6, %xmm3
	vmovsd	%xmm6, %xmm6, %xmm4
	jmp	.L213
.L454:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm6
	jmp	.L204
.L880:
	vxorpd	%xmm5, %xmm5, %xmm5
	xorl	%edx, %edx
	vmovsd	%xmm5, %xmm5, %xmm2
	vmovsd	%xmm5, %xmm5, %xmm0
	jmp	.L195
.L452:
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%edx, %edx
	vmovsd	%xmm3, %xmm3, %xmm5
	vmovsd	%xmm3, %xmm3, %xmm4
	jmp	.L187
.L449:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.L174
.L446:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	%rbx, %rdi
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.L162
.L445:
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovsd	%xmm2, %xmm2, %xmm1
	jmp	.L152
.L444:
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovsd	%xmm2, %xmm2, %xmm1
	jmp	.L145
.L441:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.L135
.L438:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm1, %xmm1, %xmm2
	jmp	.L123
.L899:
	vzeroupper
	jmp	.L338
.L484:
	vxorpd	%xmm4, %xmm4, %xmm4
	xorl	%edx, %edx
	vmovsd	%xmm4, %xmm4, %xmm6
	vmovsd	%xmm4, %xmm4, %xmm3
	vmovsd	%xmm4, %xmm4, %xmm5
	jmp	.L396
.L902:
	vzeroupper
	jmp	.L363
.L460:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.L262
.L457:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.L246
.L233:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%r13, %xmm7, %xmm4
	vmovsd	-296(%rbp), %xmm3
	vmovsd	%xmm3, %xmm3, %xmm1
	vdivsd	%xmm4, %xmm3, %xmm2
	jmp	.L411
.L225:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%r13, %xmm7, %xmm3
	vmovsd	-296(%rbp), %xmm2
	vdivsd	%xmm3, %xmm2, %xmm1
	jmp	.L412
.L466:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.L298
.L281:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtusi2sdq	%rsi, %xmm7, %xmm4
	vmovsd	-296(%rbp), %xmm2
	vmovsd	%xmm2, %xmm2, %xmm3
	vdivsd	%xmm4, %xmm2, %xmm1
	jmp	.L410
.L419:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	%rbx, %rcx
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.L29
.L421:
	vmovsd	.LC1(%rip), %xmm7
	vmovsd	%xmm7, -368(%rbp)
	vmovq	%xmm7, %r13
	jmp	.L35
.L417:
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.L21
.L414:
	vxorpd	%xmm7, %xmm7, %xmm7
	vmovsd	%xmm7, -296(%rbp)
	vmovq	%xmm7, %r13
	jmp	.L9
.L429:
	vmovsd	.LC4(%rip), %xmm7
	vmovsd	%xmm7, -368(%rbp)
	vmovq	%xmm7, %r13
	jmp	.L77
.L415:
	vmovdqa64	_ZN9FAST_MATHL8exp_maskE(%rip), %zmm0
	vmovdqa64	_ZN9FAST_MATHL9frac_maskE(%rip), %zmm1
	movq	%rbx, %rax
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.L16
.L871:
	movl	$0, 16(%rax)
	movq	$20, (%rax)
	movb	$0, 44(%rax)
	jmp	.L8
.L891:
	call	sqrt
	jmp	.L232
.L829:
	vzeroupper
	call	sqrt
	vmovq	%xmm0, %r15
	jmp	.L186
.L883:
	call	sqrt
	jmp	.L200
.L828:
	call	sqrt
	vmovq	%xmm0, %r13
	jmp	.L160
.L878:
	vzeroupper
	call	sqrt
	movq	-288(%rbp), %r15
	jmp	.L172
.L416:
	movq	-296(%rbp), %r15
	jmp	.L18
.L914:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vmovsd	%xmm0, %xmm0, %xmm5
	vmovsd	%xmm0, %xmm0, %xmm2
	vmovsd	%xmm0, %xmm0, %xmm4
	jmp	.L404
.L885:
	vmovsd	%xmm6, -368(%rbp)
	call	sqrt
	vmovsd	%xmm0, %xmm0, %xmm3
	vmovsd	-368(%rbp), %xmm6
	jmp	.L210
.L443:
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovsd	%xmm3, %xmm3, %xmm1
	jmp	.L139
.L424:
	movq	-368(%rbp), %r13
	jmp	.L45
.L302:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	%r15, %xmm7, %xmm7
	vmovsd	-296(%rbp), %xmm4
	vmovsd	%xmm4, %xmm4, %xmm1
	vdivsd	%xmm7, %xmm4, %xmm5
	jmp	.L312
.L266:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	%r15, %xmm7, %xmm6
	vmovsd	-296(%rbp), %xmm7
	vmovsd	%xmm7, %xmm7, %xmm1
	vdivsd	%xmm6, %xmm7, %xmm4
	jmp	.L276
.L250:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	%r15, %xmm7, %xmm5
	vmovsd	-296(%rbp), %xmm1
	vdivsd	%xmm5, %xmm1, %xmm3
	jmp	.L257
.L833:
	vmovsd	%xmm3, -368(%rbp)
	call	sqrt
	vmovsd	-368(%rbp), %xmm3
	jmp	.L244
.L893:
	vzeroupper
	call	sqrt
	movq	-288(%rbp), %r15
	jmp	.L260
.L836:
	vmovsd	%xmm7, -368(%rbp)
	vzeroupper
	call	sqrt
	vmovsd	-368(%rbp), %xmm7
	jmp	.L280
.L876:
	call	sqrt
	jmp	.L151
.L451:
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovsd	%xmm3, %xmm3, %xmm1
	jmp	.L178
.L448:
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovsd	%xmm3, %xmm3, %xmm1
	jmp	.L166
.L420:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L31
.L432:
	movq	-368(%rbp), %r13
	jmp	.L87
.L873:
	call	_ZSt16__throw_bad_castv
.LEHE1:
.L486:
	movq	%rax, %r12
	jmp	.L409
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8105:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8105-.LLSDACSB8105
.LLSDACSB8105:
	.uleb128 .LEHB0-.LFB8105
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8105
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L486-.LFB8105
	.uleb128 0
.LLSDACSE8105:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC8105
	.type	main.cold, @function
main.cold:
.LFSB8105:
.L5:
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
.LEHB2:
	call	__cxa_throw_bad_array_new_length
.L409:
	leaq	-280(%rbp), %rdi
	vzeroupper
	call	_ZNSsD1Ev
	movq	%r12, %rdi
	call	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE8105:
	.section	.gcc_except_table
.LLSDAC8105:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8105-.LLSDACSBC8105
.LLSDACSBC8105:
	.uleb128 .LEHB2-.LCOLDB78
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC8105:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE78:
	.section	.text.startup
.LHOTE78:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB8710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$_ZStL8__ioinit, %edi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	vpbroadcastq	.LC88(%rip), %zmm0
	vpbroadcastq	.LC94(%rip), %zmm1
	vmovdqa64	%zmm0, _ZN9FAST_MATHL8exp_maskE(%rip)
	vpbroadcastq	.LC89(%rip), %zmm0
	vmovdqa64	%zmm1, _ZN9FAST_MATHL7exp_infE(%rip)
	vmovdqa64	%zmm0, _ZN9FAST_MATHL10exp_mask10E(%rip)
	vpbroadcastq	.LC90(%rip), %zmm0
	vpbroadcastq	.LC95(%rip), %zmm1
	vmovdqa64	%zmm0, _ZN9FAST_MATHL9frac_maskE(%rip)
	vpbroadcastq	.LC91(%rip), %zmm0
	vmovdqa64	%zmm1, _ZN9FAST_MATHL8exp_flowE(%rip)
	vmovdqa64	%zmm0, _ZN9FAST_MATHL7exp_subE(%rip)
	vpbroadcastq	.LC92(%rip), %zmm0
	vpbroadcastq	.LC96(%rip), %zmm1
	vmovdqa64	%zmm0, _ZN9FAST_MATHL8exp_zeroE(%rip)
	vpbroadcastq	.LC93(%rip), %zmm0
	vmovdqa64	%zmm1, _ZN9FAST_MATHL7exp_oneE(%rip)
	vmovdqa64	%zmm0, _ZN9FAST_MATHL7exp_setE(%rip)
	vmovdqa64	%zmm0, _ZN9FAST_MATHL7avx_oneE(%rip)
	vzeroupper
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8710:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.weak	_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params
	.section	.bss._ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params,"awG",@nobits,_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params,comdat
	.align 8
	.type	_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, @gnu_unique_object
	.size	_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, 8
_ZGVZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params:
	.zero	8
	.weak	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params
	.section	.bss._ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params,"awG",@nobits,_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params,comdat
	.align 64
	.type	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, @gnu_unique_object
	.size	_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params, 448
_ZZN9FAST_MATH8avx_log2EDv8_dE16log2_poly_params:
	.zero	448
	.weak	_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params
	.section	.bss._ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params,"awG",@nobits,_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params,comdat
	.align 8
	.type	_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, @gnu_unique_object
	.size	_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, 8
_ZGVZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params:
	.zero	8
	.weak	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params
	.section	.bss._ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params,"awG",@nobits,_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params,comdat
	.align 64
	.type	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, @gnu_unique_object
	.size	_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params, 448
_ZZN9FAST_MATH8avx_2powEDv8_dE15pow_poly_params:
	.zero	448
	.local	_ZN9FAST_MATHL7avx_oneE
	.comm	_ZN9FAST_MATHL7avx_oneE,64,64
	.local	_ZN9FAST_MATHL7exp_oneE
	.comm	_ZN9FAST_MATHL7exp_oneE,64,64
	.local	_ZN9FAST_MATHL8exp_flowE
	.comm	_ZN9FAST_MATHL8exp_flowE,64,64
	.local	_ZN9FAST_MATHL7exp_infE
	.comm	_ZN9FAST_MATHL7exp_infE,64,64
	.local	_ZN9FAST_MATHL7exp_setE
	.comm	_ZN9FAST_MATHL7exp_setE,64,64
	.local	_ZN9FAST_MATHL8exp_zeroE
	.comm	_ZN9FAST_MATHL8exp_zeroE,64,64
	.local	_ZN9FAST_MATHL7exp_subE
	.comm	_ZN9FAST_MATHL7exp_subE,64,64
	.local	_ZN9FAST_MATHL9frac_maskE
	.comm	_ZN9FAST_MATHL9frac_maskE,64,64
	.local	_ZN9FAST_MATHL10exp_mask10E
	.comm	_ZN9FAST_MATHL10exp_mask10E,64,64
	.local	_ZN9FAST_MATHL8exp_maskE
	.comm	_ZN9FAST_MATHL8exp_maskE,64,64
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	2146435072
	.section	.rodata
	.align 64
.LC3:
	.quad	-8
	.quad	-7
	.quad	-6
	.quad	-5
	.quad	-4
	.quad	-3
	.quad	-2
	.quad	-1
	.section	.rodata.cst8
	.align 8
.LC4:
	.long	0
	.long	-1048576
	.align 8
.LC6:
	.long	0
	.long	1080623104
	.align 8
.LC7:
	.long	-4194304
	.long	1105199103
	.align 8
.LC8:
	.long	0
	.long	1079574528
	.align 8
.LC36:
	.long	0
	.long	1073741824
	.section	.rodata
	.align 64
.LC38:
	.quad	4613679739648574206
	.quad	4613679739648574206
	.quad	4613679739648574206
	.quad	4613679739648574206
	.quad	4613679739648574206
	.quad	4613679739648574206
	.quad	4613679739648574206
	.quad	4613679739648574206
	.align 64
.LC39:
	.quad	4592988840354051886
	.quad	4592988840354051886
	.quad	4592988840354051886
	.quad	4592988840354051886
	.quad	4592988840354051886
	.quad	4592988840354051886
	.quad	4592988840354051886
	.quad	4592988840354051886
	.align 64
.LC40:
	.quad	-4661700562853761792
	.quad	-4661700562853761792
	.quad	-4661700562853761792
	.quad	-4661700562853761792
	.quad	-4661700562853761792
	.quad	-4661700562853761792
	.quad	-4661700562853761792
	.quad	-4661700562853761792
	.align 64
.LC41:
	.quad	4532364247193249827
	.quad	4532364247193249827
	.quad	4532364247193249827
	.quad	4532364247193249827
	.quad	4532364247193249827
	.quad	4532364247193249827
	.quad	4532364247193249827
	.quad	4532364247193249827
	.align 64
.LC42:
	.quad	-4719474103039009527
	.quad	-4719474103039009527
	.quad	-4719474103039009527
	.quad	-4719474103039009527
	.quad	-4719474103039009527
	.quad	-4719474103039009527
	.quad	-4719474103039009527
	.quad	-4719474103039009527
	.align 64
.LC43:
	.quad	4475023006349810696
	.quad	4475023006349810696
	.quad	4475023006349810696
	.quad	4475023006349810696
	.quad	4475023006349810696
	.quad	4475023006349810696
	.quad	4475023006349810696
	.quad	4475023006349810696
	.align 64
.LC44:
	.quad	-4777259605528867037
	.quad	-4777259605528867037
	.quad	-4777259605528867037
	.quad	-4777259605528867037
	.quad	-4777259605528867037
	.quad	-4777259605528867037
	.quad	-4777259605528867037
	.quad	-4777259605528867037
	.align 64
.LC47:
	.quad	4613679739648590860
	.quad	4613679739648590860
	.quad	4613679739648590860
	.quad	4613679739648590860
	.quad	4613679739648590860
	.quad	4613679739648590860
	.quad	4613679739648590860
	.quad	4613679739648590860
	.align 64
.LC48:
	.quad	4606838313952097750
	.quad	4606838313952097750
	.quad	4606838313952097750
	.quad	4606838313952097750
	.quad	4606838313952097750
	.quad	4606838313952097750
	.quad	4606838313952097750
	.quad	4606838313952097750
	.align 64
.LC49:
	.quad	4603373084438462431
	.quad	4603373084438462431
	.quad	4603373084438462431
	.quad	4603373084438462431
	.quad	4603373084438462431
	.quad	4603373084438462431
	.quad	4603373084438462431
	.quad	4603373084438462431
	.align 64
.LC50:
	.quad	4601096258328958469
	.quad	4601096258328958469
	.quad	4601096258328958469
	.quad	4601096258328958469
	.quad	4601096258328958469
	.quad	4601096258328958469
	.quad	4601096258328958469
	.quad	4601096258328958469
	.align 64
.LC51:
	.quad	4599468875152691283
	.quad	4599468875152691283
	.quad	4599468875152691283
	.quad	4599468875152691283
	.quad	4599468875152691283
	.quad	4599468875152691283
	.quad	4599468875152691283
	.quad	4599468875152691283
	.align 64
.LC52:
	.quad	4598063058404386163
	.quad	4598063058404386163
	.quad	4598063058404386163
	.quad	4598063058404386163
	.quad	4598063058404386163
	.quad	4598063058404386163
	.quad	4598063058404386163
	.quad	4598063058404386163
	.align 64
.LC53:
	.quad	4599360555809850847
	.quad	4599360555809850847
	.quad	4599360555809850847
	.quad	4599360555809850847
	.quad	4599360555809850847
	.quad	4599360555809850847
	.quad	4599360555809850847
	.quad	4599360555809850847
	.section	.rodata.cst8
	.align 8
.LC55:
	.long	0
	.long	1072693248
	.align 8
.LC57:
	.long	0
	.long	1069547520
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC61:
	.quad	4412750543122677053
	.quad	4412750543122677053
	.section	.rodata.cst8
	.align 8
.LC63:
	.quad	8
	.set	.LC64,.LC38
	.set	.LC65,.LC39
	.set	.LC66,.LC40
	.set	.LC67,.LC41
	.set	.LC68,.LC42
	.set	.LC69,.LC43
	.set	.LC70,.LC44
	.set	.LC71,.LC47
	.set	.LC72,.LC48
	.set	.LC73,.LC49
	.set	.LC74,.LC50
	.set	.LC75,.LC51
	.set	.LC76,.LC52
	.set	.LC77,.LC53
	.set	.LC88,.LC1
	.align 8
.LC89:
	.quad	9214364837600034816
	.align 8
.LC90:
	.quad	4503599627370495
	.align 8
.LC91:
	.quad	1023
	.align 8
.LC92:
	.quad	-9218868437227405313
	.set	.LC93,.LC55
	.align 8
.LC94:
	.quad	1024
	.align 8
.LC95:
	.quad	10
	.align 8
.LC96:
	.quad	4503599627370496
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 11.2.1 20210728 (Red Hat 11.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
