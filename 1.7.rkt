(define (square x)
    (expt x 2))

(define (sqrt-iter guess lastguess x)
    (if (good-enough? guess lastguess)
        guess
    (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess lastguess)
    (< (abs (- lastguess guess)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 0 x))

(sqrt 0.000001)