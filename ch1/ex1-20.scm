;;Application Order
;; (gcd 206 40)
;;  (gcd 40 (remainder 206 40)) #1
;;  (gcd 40 6) 
;;  (gcd 6 (remainder 40 6)) #2
;;  (gcd 6 4)
;;  (gcd 4 (remainder 6 4)) #3
;;  (gcd 4 2)
;;  (gcd 2 (remainder 4 2)) #4
;;  (gcd 2 0)
;;  2
;;

;;Normal Order......
;;
;;
;;
;;
;;
;;
;;
;;



(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
