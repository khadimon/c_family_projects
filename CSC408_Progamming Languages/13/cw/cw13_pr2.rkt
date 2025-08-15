;cw13 pr2
;user input example: (ave-of-cubes '(1 2 3 4))
#lang scheme
(define (ave-of-cubes lst)
  (define (cube x) (* x x x))
  (define (sum lst)
    (if (null? lst)
        0
        (+ (car lst) (sum (cdr lst)))))
  (define (count lst)
    (if (null? lst)
        0
        (+ 1 (count (cdr lst))))) 
  (let* ((cubed-list (map cube lst)) 
         (total-sum (sum cubed-list)) 
         (count (count cubed-list))) 
    (if (= count 0)
        0 
        (/ total-sum count)))) 