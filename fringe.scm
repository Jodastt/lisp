(define (fringe items)
  (cond ((null? items) 
         items)
        ((not (pair? (car items)))
         (append (list (car items)) 
                 (fringe (cdr items))))
        (else (append (fringe (car items)) 
              (fringe (cdr items))))))
