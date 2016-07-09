; RUN: llc -mtriple nyuzi-elf %s -o - | FileCheck %s

target triple = "nyuzi"

define float @divide_float(float %a, float %b) { 	; CHECK: divide_float:
	%1 = fdiv float %a, %b

	; CHECK: reciprocal [[ESTIMATE1:s[0-9]+]], [[DENOMINATOR:s[0-9]+]]

    ; Iteration 1
	; CHECK: mul_f [[TRIAL1:s[0-9]+]], [[ESTIMATE1]], [[DENOMINATOR]]
	; CHECK: sub_f [[ERROR1:s[0-9]+]], [[TWO:s[0-9]+]], [[TRIAL1]]
	; CHECK: mul_f [[ESTIMATE2:s[0-9]+]], [[ESTIMATE1]], [[ERROR1]]

    ; Iteration 2
	; CHECK: mul_f [[TRIAL2:s[0-9]+]], [[ESTIMATE2]], [[DENOMINATOR]]
	; CHECK: sub_f [[ERROR2:s[0-9]+]], [[TWO]], [[TRIAL2]]
	; CHECK: mul_f [[ESTIMATE3:s[0-9]+]], [[ESTIMATE2]], [[ERROR2]]


	; CHECK: mul_f {{s[0-9]+}}, {{s[0-9]+}}, [[ESTIMATE3]]

	ret float %1
}




