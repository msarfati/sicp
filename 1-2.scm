(define (sq x) (* x x ))

(define (sos x y)  ;; sum-of-squares
  (+ (sq x) (sq y)))

(define (my-sum x y) ;; Recursively adds x into y
  (if (= x 0)
  	y
  	(+ (-1+ x) (1+ y))))

;; This thus becomes:
;; (my-sum 3 4)
;; (my-sum 2 5)
;; (my-sum 1 6)
;; (my-sum 0 7)
;; 7

(define (my-sum2 x y)
  (if (= x 0)
  	y
  	(1+ (+ (-1+ x) y))))

;; Thus becomes:
;; (my-sum2 3 4)
;; (1+ (+ 2 4))
;; (1+ (1+ (+ 1 4)))
;; (1+ (1+ (1+ (+ 0 4))))
;; (1+ (1+ (1+ 4)))
;; (1+ (1+ 5))
;; (1+ 6)
;; 7
;;
;; In my-sum2, increments are expanding out, then contracting back in. In my-sum, it's a straight linear process of evaluation.
;; my-sum2 defers the addition until later, my-sum1 increments immediately.
;;
;; Each step is a unit of time, and width of statement is how much one must remember (space)
;;
;; my-sum time  = O(x)
;; 		  space = O(1)
;; this is an example of iteration
;; This is an abstraction of the time it takes any machine to calculate this. Of course, this ignores the magnitude and complexity of the numbers represented
;;
;; my-sum1
