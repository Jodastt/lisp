;Defines a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers

(define (sq a) (* a a))
(define (sumsq a b) (+ (sq a)(sq b)))
(define (sumsqlg a b c) 
    (cond  
        ((and (>= a c) (>= b c)) (sumsq a b)) 
        ((and (>= b a) (>= c a)) (sumsq b c)) 
        ((and (>= a b) (>= c b)) (sumsq a c)))) 
(sumsqlg 3 4 2)
