(define (Get-n-m n m)
  (if (or (= n 1) (= m 1) (= m n))
      1
      (+ (Get-n-m (- n 1) (- m 1)) (Get-n-m (- n 1) m))))

(newline)
(display (Get-n-m 4 3))
(newline)
(display (Get-n-m 3 2))
(newline)
(display (Get-n-m 5 3))
(newline)
