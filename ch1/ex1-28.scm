(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (something (square (expmod base (/ exp 2) m))
		    m))
	(else
	 (something (* base (expmod base (- exp 1) m))
		       m))))


(define (something n m)
  (if (= (remainder n m) 1)
      0
      (remainder n m)))

(define (Miller-Rabin-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
	((Miller-Rabin-test n) (fast-prime? n (- times 1)))
	(else false)))



(display (fast-prime? 561 (/ 561 2)))
(display (fast-prime? 1105 (/ 1105 2)))
(display (fast-prime? 6601 (/ 6601 2)))

