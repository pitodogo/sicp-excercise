(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (remainder (square (expmod base (/ exp 2) m))
		    m))
	(else
	 (remainder (* base (expmod base (-exp 1) m))
		    m))))

(define (expmod2 base exp m)
  (remainder (fast-expt base exp) m))
;;
;;the concept itself is correct, but the problem is if we process it in the remainder, the number of remainder to process is smaller.
;; to but it in the fast-expt, the resulting number will become extremely large so the speed is extermely slow then.
;;
