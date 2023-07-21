#lang sicp

(define (sqrt-iter guess x)
  ;(print guess)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (/ (abs (- guess (improve guess x))) guess) 0.0000000001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x) (* x x))

(define (print x) (display x) (newline))

(sqrt 0.00000001)
(square (sqrt 0.00000001))

(sqrt 12345678910111213)
(square (sqrt 12345678910111213))

