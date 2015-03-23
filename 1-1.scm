(define (square x) (* x x ))
(define d (* 7 7 ))

(define (average x y)
  (/ (+ x y) 2)
)

(define (mean-square x y)
  (average (square x) (square y))
)

(define (absolute x)
  (cond ((< x 0) (- x)) ; if x is less than 0, negate it
  		((= x 0) x)
  		((> x 0) x)
  		)
)

(define (alt-absolute x)
  (cond ((< x 0) (- x))
  		(else x))
)

(define (my-test x)
  (if (= x 1)
  	'Yes
  	'No)
)

;; Heron's Algorithm to find a square root
(define (my-sqrt x)
  (define (improve guess)
  	(average guess (/ x guess))
  )
  (define (good-enough? guess)
  	(< (abs (- (square guess) x))
  	   0.001)
  )
  (define (try guess)
  	(if (good-enough? guess)
  	  guess
  	  (try (improve guess)))
  )
  (try 1)
)
