(define (halve x) (/ x 2))
(define (double x) (* x 2))

(define (fast-mul a b n)
  (cond ((= b 0) n)
	((even? b) (fast-mul (double a) (halve b) n))
	(else (fast-mul a (- b 1) (+ n a)))))

(display (fast-mul 9 8 0))

