(define (cube x) (* x x x))
(define (good-enough? guess x) (< (abs (- (cube guess) x)) 0.001))
(define (improve y x) (/ (+ (/ x (* y y)) (* 2 y)) 3))
(define (sqrt-iter guess x) (if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(display (sqrt 27))
(newline)





