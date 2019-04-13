 (define (square x)
    (expt x 2))

(define (cubert-iter guess x)
    (if (good-enough? (improve guess x) guess)
        guess
    (cubert-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+(/ x (square guess)) (* 2 guess))
     3))



(define (good-enough? guess lastguess)
    (< (abs (/ (- guess lastguess) lastguess)) 0.001))

(define (cubert x)
    (cubert-iter 1.0 x))

(cubert 125)