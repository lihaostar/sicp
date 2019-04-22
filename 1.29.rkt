(define (cube x) (* x x x))

;This approach has precision problem
(define (my-sum term a next b seq n)
  (define factor 
    (cond ((= seq 0) 1)
          ((= seq n) 1)
          ((odd? seq) 4)
          (else 2)))
  (newline)  
  (display a) (display " ") (display b)
  (if (> a b)
    0
    
    (+ (* factor (term a))
       (my-sum term (next a) next b (+ seq 1) n))))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (add-h x)
    (+ x h))
  (/(* (my-sum f a add-h b 0 n) h ) 3))



  (define (simpson f a b n)
    
    (define h (/ (- b a) n))

    (define (y k)
        (f (+ a (* k h))))

    (define (factor k)
        (cond ((or (= k 0) (= k n))
                1)
              ((odd? k)
                4)
              (else
                2)))
    
    (define (simpson-term k)
        (* (factor k)
           (y k)))

    (define (next k)
        (+ k 1))

   
        (* (/ h 3)
           (sum simpson-term 0 next n)))

(define (sum term a next b)
(newline) 
(display a)
(if (> a b)

0
(+ (term a)
(sum term (next a) next b))))