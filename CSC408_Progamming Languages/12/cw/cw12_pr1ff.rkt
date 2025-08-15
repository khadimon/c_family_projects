#lang racket

(define (fibonacci n)
  (if (< n 2)
      n
      (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

(define (main)
  (for ([i (in-range 11)])
    (display (fibonacci i))
    (newline)))

(main)