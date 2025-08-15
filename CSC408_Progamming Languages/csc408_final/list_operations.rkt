#lang racket

; Function to double all elements in a list
(define (double-all lst)
  (map (lambda (x) (* x 2)) lst))

; Function to increment all elements in a list
(define (increment-all lst)
  (map (lambda (x) (+ x 1)) lst))

; Function to sum all elements in a list
(define (sum-all lst)
  (foldl + 0 lst))

; Test cases
(printf "double-all test:~n")
(printf "(double-all '(5 6 8 10)) => ~a~n" (double-all '(5 6 8 10)))

(printf "~nincrement-all test:~n")
(printf "(increment-all '(6 10 12 8)) => ~a~n" (increment-all '(6 10 12 8)))

(printf "~nsum-all test:~n")
(printf "(sum-all '(6 10 12 8)) => ~a~n" (sum-all '(6 10 12 8))) 