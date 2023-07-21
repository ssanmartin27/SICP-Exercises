#lang sicp

(define (cube-iter guess x)
  ;(print guess)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (improve guess x)
   (/ (+ (/ x (square guess)) (* 2 guess )  )
      3)
)

(define (good-enough? guess x)
  (< (/ (abs (- guess (improve guess x))) guess) 0.0000000001))

(define (cbrt x)
  (cube-iter 1.0 x))

(define (square x) (* x x))
(define (cube x) (* x x x))

(define (print x) (display x) (newline))

(cbrt 9)
(cube (cbrt 9))

(cbrt 543)
(cube (cbrt 543))



