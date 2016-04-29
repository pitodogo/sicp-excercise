(define (sum_of_square x1 x2) (+ (* x1 x1) (* x2 x2)))
(define (maximumtwo x1 x2 x3)
  (cond ( (and (> x1 x2) (> x3 x2)) (sum_of_square x1 x3))
	( (and (> x2 x1) (> x3 x1)) (sum_of_square x2 x3))
	( (and (> x1 x3) (> x2 x3)) (sum_of_square x1 x2))))


(display (maximumtwo 2 6 3))
