(define (iter-expt b n a)
  (if (= n 1) a
      (if   (even? n)  (iter-expt b (/ n 2) (* a b b))  (iter-expt b (- n 1) (* a b)))))

(display (iter-expt 2 5 1))


  
  
