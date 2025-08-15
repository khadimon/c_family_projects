;; Khadi Valieva (w10118633)
;; CSC 408
#lang scheme
(define (recursive-sort list)
  (if (null? list)
      '()
      (let ((smallest (apply min list))) 
        (cons smallest (recursive-sort (remove smallest list)))))) 

;; Example usage: (recursive-sort '(3 1 4 1 5 9 2 6))
