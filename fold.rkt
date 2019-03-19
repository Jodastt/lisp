(define (enumerate-interval low high)
  (if (> low high)
      ()
      (cons low 
            (enumerate-interval 
             (+ low 1) 
             high))))

(define (filter predicate sequence)
  (cond ((null? sequence) ())
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate 
                       (cdr sequence))))
        (else  (filter predicate 
                       (cdr sequence)))))

(define (map proc items)
  (if (null? items)
      items
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (accumulate op initial sequence)
  (if (null? sequences
      initial
      (op (car sequence)
          (accumulate op 
                      initial 
                      (cdr sequence)))))

(define (accumulate-n op init seqs)
   (if (null? (car seqs))
       null
       (cons (accumulate op init (map car seqs))
             (accumulate-n op init (map cdr seqs)))))

(define (append list1 list2)
   (if (null? list1)
       list2
       (cons (car list1) (append (cdr list1) list2))))

(define (reverse items)
 (if (null? items)
     items
     (append (reverse (cdr items)) (list (car items)))))

(define (reverseR sequence)
  (fold-right 
   (lambda (x y) (append y (list x))) nil sequence))

(define (reverseL sequence)
  (fold-left 
   (lambda (x y) (cons y x)) nil sequence))
