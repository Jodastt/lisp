(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (mult a b)
  (cond ((= b 0)
          0)
        ((even? a)
          (mult (halve a)(double b)))
        (else  
          (+ a (mult a (- b 1))))))
