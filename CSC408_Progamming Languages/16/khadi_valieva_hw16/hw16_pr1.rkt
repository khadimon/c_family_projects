;; Khadi Valieva (w10118633)
;; CSC 408

#lang scheme
(define (toh n source target aux)
  (if (= n 1)
      (display (format "Move disk from ~a to ~a\n" source target))
      (begin
        (toh (- n 1) source aux target)
        (display (format "Move disk from ~a to ~a\n" source target))
        (toh (- n 1) aux target source))))

;; use case example: (toh 3 "A" "B" "C")