(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))
(define (average x y) (/ (+ x y) 2))
(define (improve guess x) (average guess (/ x guess)))
(define (sqrt-iter guess x) (if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(display (sqrt 4))
(newline)
(display (sqrt 0.001))
(newline)
(display (sqrt 0.000000000000001)) ; valeu will be 0.3xxxx
(newline)
(display (sqrt 999999999999999999990000080808080808080123123123123128312812380128103912039102912312930193012930129301293012))
