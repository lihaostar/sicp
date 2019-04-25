(define (product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* (term a) result) )))
  (iter a 1))


(define (factorial n)
    (define (next x) (+ x 1))
    (define (term x) x)
    (product term 1 next n))

(define (pi-denominator n)
    (define (term x)
        (if (odd? x)
            (+ x 2)
            (+ x 1)))
    (define (next x) (+ x 1))
    (product term 1 next n))

(define (pi-numerator n)
    (define (term x)
        (if (odd? x)
            (+ x 1)
            (+ x 2)))
    (define (next x) (+ x 1))
    (product term 1 next n))

(define (pi n)
    (*
        ( exact->inexact (/ (pi-numerator n) (pi-denominator n))) 
        4))
