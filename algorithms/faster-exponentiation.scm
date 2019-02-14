;a*(b^n)
(define (exp-fast a b n)
  (cond ((= n 0)
        a)
    ((even? n)
      (exp-fast a (* b b) (/ n 2)))
    (else
      (exp-fast (* a b) b (- n 1)))))
