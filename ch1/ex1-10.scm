(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
        ((= y 1) 2)
	(else (A (- x 1) (A x (- y 1))))))

(display (A 0 10))
(newline)
(display (A 0 4))
(newline)
(display (A 0 3))

;; (A 0 n) => 2n

(newline)
(display (A 1 10))
(newline)
(display (A 1 4))
(newline)
(display (A 1 3))




;; (A 1 n) => 2^n


(newline)
(display (A 2 4))
(newline)
(display (A 2 3))

;; (A 2 n) => 2^ (2^n)

