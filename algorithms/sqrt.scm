(define (abs x) 
  (if (< x 0)
  (- x)
  x))

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess(/ x guess)))

(define (goodEnough guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqIter guess x)
  (if (goodEnough guess x)
      guess
      (sqIter (improve guess x)
      x)))
 
(define (sqrt x)
  (sqIter 1.0 x))

(sqrt 42)
