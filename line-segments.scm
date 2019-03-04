(define (square x) (* x x))
(define (average x y)(/ (+ x y) 2))
(define (make-segment start-point end-point)
  (cons start-point end-point))
(define (make-point x y)
  (cons x y))
(define (x-point point) 
  (car point))
(define (y-point point)
  (cdr point))
(define (midpoint segment)
  (make-point (average (car (car segment))(car (cdr segment)))
              (average (cdr (cdr segment))(cdr (car segment)))))

(define (distance line)
  (sqrt (+ (square (- (car (cdr line))(car (car line))))
           (square (- (cdr (cdr line))(cdr (car line)))))))

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
  (newline))
(define (print-segment segment)
  (print-point (car segment))
  (print-point (cdr segment)))
