#lang racket

; Define variables
(define iterations 10)
(define i 0)
(define val 5)

; Implement the for loop using Racket's for syntax
(set! val 
  (for/fold ([result val])  ; Start with initial value of val
            ([j (range iterations)])  ; Loop from 0 to iterations-1
    (+ result j)))  ; Add current iteration number to result

; Print the final result
(printf "Final value: ~a~n" val) 