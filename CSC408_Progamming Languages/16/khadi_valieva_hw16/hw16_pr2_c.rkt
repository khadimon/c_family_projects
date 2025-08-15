;; Khadi Valieva (w10118633)
;; CSC 408
#lang scheme
(define (quick-sort list_rec)
  (if (null? list_rec)
      '()
      (let ((pivot (car list_rec)))
        (append (quick-sort (filter (lambda (x) (< x pivot)) (cdr list_rec)))
                (list pivot)
                (quick-sort (filter (lambda (x) (>= x pivot)) (cdr list_rec)))))))

;; Example usage: (quick-sort '(3 1 4 1 5 9 2 6))
