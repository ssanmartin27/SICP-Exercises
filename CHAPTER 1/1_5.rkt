#lang sicp
#|
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

Applicative-order:
If the interpreter uses applicative order, the program would
enter an infinite loop when it tries to evaluate p, since it
will always return itself and be reevaluated endlessly.

Normal-order:
In this case (p) will never be evaluated and the procedure will
return 0

|#

