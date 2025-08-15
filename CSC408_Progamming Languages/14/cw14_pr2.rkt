#lang scheme

(define (area-of-ring outer-radius thickness)
  (let* ((inner-radius (- outer-radius thickness))
         (pi 3.14159)
         (area (* pi (- (* outer-radius outer-radius) (* inner-radius inner-radius))))) 
    area)) 

(define (round-to-2-decimals num)
  (round (* num 100.0)))

(display "Enter the outer radius: ")
(define outer-radius (read))
(display "Enter the thickness: ")
(define thickness (read))


(define area (area-of-ring outer-radius thickness))
(define rounded-area (round-to-2-decimals area)) 
(display "The area of the circular ring is: ")
(display (/ rounded-area 100.0))
(newline)