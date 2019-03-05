(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (f (f x))))

(define (add m n)
  (lambda (f) (lambda (x) ((m f) ((n f) x)))))

(define (church-numeral x)
  (define (iter result x count)
    (if (< count x) 
    (iter (add-1 result) x (+ 1 count)))
    result)
  (iter zero x 0))
