#lang racket

; Define variables
(define i 0)  ; int i
(define a 0)  ; short a
(define b 0)  ; short b

; Perform operations
(set! i 300)          ; i = 300
(set! a (inexact->exact (floor i)))    ; a = i (with potential truncation)
(set! b (+ a 3))      ; b = a + 3

; Print results to verify
(printf "i = ~a~n" i)
(printf "a = ~a~n" a)
(printf "b = ~a~n" b) 