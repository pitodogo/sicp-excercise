;; (define (square x) (* x x))
;; it will evaluate x once only. But
;; (* x x) so both x will be evaluated, so each computation is twice and it compensates the gain from (exp / 2); 
;; and it will happen in a recursive way; so O( log(2^n))
;;
;;
;;
;;
