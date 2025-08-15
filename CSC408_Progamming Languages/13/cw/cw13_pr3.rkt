;cw13 pr3
;user input example: (max-in-list '(10 20 5 55))
#lang scheme

(define (max-in-list lst)
  (define (max a b)
    (if (> a b) a b))
  
  (define (find-max lst current-max)
    (cond
      ((null? lst) current-max) 
      (else (find-max (cdr lst) (max current-max (car lst)))))) 
  
  (if (null? lst)
      (error "List is empty") 
      (find-max (cdr lst) (car lst))))