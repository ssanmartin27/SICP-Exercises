#lang sicp

(define (sqrt-iter guess x)
  (print guess)
  (if (good-enough? guess x)
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

(define (print x) (display x) (newline))

(sqrt 0.0000001)
(square (sqrt 0.0000001))

#|The procedure fails with very small numbers because the testing number does not
 scale with the number to be squared. So if the number is very small, it will pass
the test after very few iterations, which produces a result bigger (and thus
inaccurate) than the real root.|#

(sqrt 123456789101112)
(square (sqrt 123456789101112))

#|The procedure also fails for very large numbers because
 after many iterations the improvements to the approximation
become so small that the change require a level of precision that
the computer can't use. So the guess effectively stays the same and never
 converges to the stipulated value|#