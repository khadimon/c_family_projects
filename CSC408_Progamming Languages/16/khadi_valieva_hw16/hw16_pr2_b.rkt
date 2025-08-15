;; Khadi Valieva (w10118633)
;; CSC 408
#lang scheme
(define (merge-sort list)
  (if (or (null? list) (null? (cdr list)))
      list
      (let* ((mid (quotient (length list) 2))
             (left (take list mid))
             (right (drop list mid)))
        (merge (merge-sort left) (merge-sort right)))))

(define (take lst n)
  (if (or (null? lst) (<= n 0))
      '()
      (cons (car lst) (take (cdr lst) (- n 1)))))

(define (drop lst n)
  (if (or (null? lst) (<= n 0))
      lst
      (drop (cdr lst) (- n 1))))

(define (merge left right)
  (cond
    ((null? left) right)
    ((null? right) left)
    ((< (car left) (car right))
     (cons (car left) (merge (cdr left) right)))
    (else
     (cons (car right) (merge left (cdr right))))))

;; Example usage: (merge-sort '(3 1 4 1 5 9 2 6))
