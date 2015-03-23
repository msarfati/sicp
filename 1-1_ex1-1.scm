10 ;;-> 10
(+ 5 3 4) ;; -> 9 + 3 -> 12
(- 9 1) ;; -> 8
(/ 6 2) ;; -> 3

(+ (* 2 4) (- 4 6)) ;; ->

(= (+ (* 2 4) (- 4 6))
   (+ 8 -2)
   6
   )

(define a 3) ;; -> (= a 3)

(define b (+ a 1)) ;; ->
(= b 4)

(+ a b (* a b)) ;; -> (= a 3) (= b 4)
(= (+ a b (* a b))
   (+ 3 4 (* 3 4))
   (+ 7 12)
   19 ;; true
   )

(= a b) ;; -> false

(if (and (> b a) (< b (* a b))) 
    b 
    a) ;; -> returns b (4)

(cond ((= a 4) 6) ;; -> #f
      ((= b 4) (+ 6 7 a)) ;; ->#t, return 17
      (else 25)) ;; ->


(= (cond ((= a 4) 6) ;; -> #f
      ((= b 4) (+ 6 7 a)) ;; ->#t, return 16
      (else 25)) ;; ->
 16
)

(+ 2 (if (> b a) b a)) ;; -> returns 6
(= 6 (+ 2 (if (> b a) b a))) ;; -> returns 6

(* (cond ((> a b) a) ;; -> #f
         ((< a b) b) ;; -> #t, return 4
         (else -1)) ;; #f
   (+ a 1)) ;; -> return 4
 ;; 4 * 4

(= 16 (* (cond ((> a b) a) ;; -> #f
         ((< a b) b) ;; -> #t, return 4
         (else -1)) ;; #f
   (+ a 1)) ;; -> return 4
 )
