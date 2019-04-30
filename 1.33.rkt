
(define (filtered-accumulate combiner null-value term a next b filter?)
    
    (define (iter a result)
        (if (> a b)
            result
            (if (filter? a)
                (iter (next a) (combiner (term a) result) )
                (iter (next a) result ))))
    (iter a null-value))


(define (filtered-combiner null-value term a next b filter?)
    (if (> a b)
        null-value
        (if (filter? a)
            (combiner (term a) (filtered-combiner null-value term (next a) next b filter?))
            (filtered-combiner null-value term (next a) next b filter?))))


        
        
;a)

;b)