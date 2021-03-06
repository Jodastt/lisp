(define (element-of-set? x set)
  (cond ((null? set) #f)
        ((equal? x (car set)) #t)
        (else (element-of-set? x (cdr set)))))
(define (adjoin-set x set)
  (if (element-of-set? x set)
      set
      (cons x set)))
(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2)) 
         '())
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1) 
                                 set2)))
        (else (intersection-set (cdr set1) 
                                set2))))
(define (union a b)
  (cond ((null? a) b)
        ((null? b) a)
        ((not (element-of-set? (car a) b))
         (cons (car a) (union (cdr a) b)))
        (else (union (cdr a) b))))

(define odds '(1 3 5))
(define evens '(0 2 4 6 4 4 2)) 

(intersection-set odds evens)
