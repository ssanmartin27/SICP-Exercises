#lang sicp
#|
(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

If b is greater than zero, the primitive operator + is returned,
which then is applied to a and b. If b is less or equal to zero,
- is applied instead.

This means that the procedure sums a and b when b is positive
and substracts a and b in the rest of cases, this always results
in b becoming positive

In other words, the procedure sums a plus the absolute value of b
|#