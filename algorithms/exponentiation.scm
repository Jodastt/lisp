(define (expt b n)
  (if (= n 0) 
      1 
      (* b (expt b (- n 1)))))

(define (iter b n prod)
    (if (= n 0) 
      (iter b (- n 1)(* b prod))))
(define (expIter b p)
  (iter b p 1))
