#lang racket

; Define variables
(define iterations 10)
(define i 0)
(define val 5)

; Using a more C-like approach with let loop
(let loop ([i 0]
           [current-val val])
  (if (< i iterations)
      (loop (+ i 1) (+ current-val i))
      (set! val current-val)))

; Print the final result
(printf "Final value: ~a~n" val) 