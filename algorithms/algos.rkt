(define (average x y)(/ (+ x y) 2))

(define (average-damp f)
  (lambda (x) 
    (average x (f x))))

(define (compose f g)
  (lambda (x)(f (g x))))

(define (repeated f n)
  (if (= n 1) f
  (compose f (repeated f (- n 1)))))

(define dx 0.000001)
(define (smooth f)
  (lambda (x)
    (/ (+ (f (+ x dx))(f x)(f (- x dx))) 3)))

(define (repeated-smooth f n)
  (repeated smooth n) f)
