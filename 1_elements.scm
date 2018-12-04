(display "hello world")
(+ 530 942)
(- 100 49)
(* 42 3)
(/ 25 5)
(+ 3.14 1.618)
(+ 100 -33 54 -60)
(* 100 .25 2)
(+(* 2 10)(/ 25 5))

(+ (* 3 
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
       6))

(define size 2)
(* 5 size)

(define (square x) (* x x))
(square 2)

(define (sum_of_squares x y)
  (+ (square x)(square y)))
(sum_of_squares 3 4)

(define (f a)
  (sum_of_squares (+ a 1) (* a 2)))
(f 5)

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs -2)
(= 5 5)
