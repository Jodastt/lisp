(define (make-interval x y) (cons x y))
(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))
(define (span x) (- (upper-bound x) (lower-bound x)))
(define (add-interval x y)
  (make-interval (+ (lower-bound x) 
                    (lower-bound y))
                 (+ (upper-bound x) 
                    (upper-bound y))))

(define (sub-interval x y)
  (make-interval (- (lower-bound x)
                    (lower-bound y)
                 (- (upper-bound x)
                    (upper-bound y)))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) 
               (lower-bound y)))
        (p2 (* (lower-bound x) 
               (upper-bound y)))
        (p3 (* (upper-bound x) 
               (lower-bound y)))
        (p4 (* (upper-bound x) 
               (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (if (or (and (< 0 (lower-bound x))(> 0 (upper-bound x)))
          (and (> 0 (lower-bound x))(< 0 (upper-bound x)))
          (and (< 0 (lower-bound y))(> 0 (upper-bound y)))
          (and (> 0 (lower-bound y))(< 0 (upper-bound y))))
    (error "One or more intervals span zero")
    (mul-interval x 
                (make-interval 
                 (/ 1.0 (upper-bound y)) 
                 (/ 1.0 (lower-bound y))))))

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) 
        (upper-bound i)) 
     2))

(define (width i)
  (/ (- (upper-bound i) 
        (lower-bound i)) 
     2))

(define (make-center-percent c p)
  (define percent (/ p 100))
  (make-interval (* c (- 1 percent))(* c (+ 1 percent))))

(define (par1 r1 r2)
  (div-interval 
   (mul-interval r1 r2)
   (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval 
     one
     (add-interval 
      (div-interval one r1) 
      (div-interval one r2)))))

(define a (make-center-percent 10 .0001))
(define b (make-center-percent 5 .0001))

((display (par1 a    a))
 (newline)
 (display (par2 a a)))
