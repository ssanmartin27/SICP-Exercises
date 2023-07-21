#lang sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x) (* x x))

#|
Because of applicative order, to evaluate new-if,
the operator and operands are evaluated first. This means that
the procedure good-enough?, guess, and sqrt-iter which correspond
to the predicate, then-clause, and else-clause are always evaluated regardless
of the conditions, which results in sqrt-iter being evaluated
over and over again in an infinite loop.

|#