;; (define (+ a b)
;;   (if (= a 0)
;;          b
;;          (inc + (dec a) b))))
;;
;;  (+ 2 3)
;;  (inc (+ (dec 2) 3))
;;  (inc (inc (+ 1 3)))
;;  (inc (inc (inc 3)))
;;  Apparently it's recursive
;;
;;
;; (define (+ a b)
;;     (if (= a 0)
;;          b
;;          (+ (dec a) (inc b))))
;;  (+ 2 3)
;;  (+ 1 4)
;;  (+ 0 5) -> 5
;;  iterative
;;
;;
;;
;;
