(define (* b n)
    (cond ((= n 0) 0)
    ((even? n) (double (* b (halve n 2))))
    (else (+ b (* b (- n 1))))))


    (define (double x)
      (+ x x))
    (define (halve x)
      (/ x 2))