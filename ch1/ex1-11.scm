;; Recursive

(define (A n)
  (if (< n 3) n
      (+ (A (- n 1)) (* 2 (A (- n 2))) (* 3 (A (- n 3))))))

(newline)
(display (A 4))
(newline)


;; Iterative
;; n1 <- n1 + 2 n2 + 3 n3
;; n2 <- n1
;; n3 <- n2
;;

(define (newA n) (AA 2 1 0 n))
	 
(define (AA n1 n2 n3 n)
  (if (= n 0)
      n3
      (AA (+ n1 (* 2 n2) (* 3 n3)) n1 n2 (- n 1))))

(display (newA 4))
;;
;;
;;

