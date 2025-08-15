;cw13 pr1
;user input example: (member? 3 '(1 2 3 4))
;returns #t if true, #f if false

#lang scheme
(define (member? item lst)
  (if (null? lst) 
      #f 
      (or (equal? item (car lst))
          (member? item (cdr lst))))) 