#lang sicp

(define (square x) (* x x) )
(define (sum-squares x y) (+ (square x) (square y)) )
(define (f x y z)
  (cond ((and (<= x y) (<= x z)) (sum-squares y z))
        ((and (<= y x) (<= y z)) (sum-squares x z))
        (else (sum-squares x y))))
(f 2 4 3)
