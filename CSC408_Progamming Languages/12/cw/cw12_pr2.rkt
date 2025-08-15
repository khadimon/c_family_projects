#lang scheme

(define (lenList lst)
  (if (null? lst)
      0
      (+ 1 (lenList (cdr lst)))))

(define listChoice '(1 2 3 4 5 6))

(display (lenList listChoice)) ; output 6
(newline)