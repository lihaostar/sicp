(define (pascal-triangle m n)
  (if (< m n) (raise "row < col"))
  (if (or (= 1 n) (= m n)) 1
    (+ (pascal-triangle (- m 1) (- n 1)) (pascal-triangle (- m 1) n))))