#lang racket

; Define the factorial function
(define (fact n)
  (if (= n 0)
      1
      (* n (fact (- n 1)))))

; Test the function with some examples
(printf "fact(0) = ~a~n" (fact 0))
(printf "fact(1) = ~a~n" (fact 1))
(printf "fact(5) = ~a~n" (fact 5))

; Let's also visualize the activation record
(define (fact-with-trace n)
  (printf "Entering fact(~a)~n" n)
  (let ([result
         (if (= n 0)
             (begin
               (printf "  Base case: fact(0) = 1~n")
               1)
             (let ([recursive-result (fact-with-trace (- n 1))])
               (printf "  Computing fact(~a) = ~a * ~a = ~a~n" 
                      n n recursive-result (* n recursive-result))
               (* n recursive-result)))])
    (printf "Exiting fact(~a) with result ~a~n" n result)
    result))

; Test the traced version
(printf "~nTracing factorial(3):~n")
(fact-with-trace 3) 