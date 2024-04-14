(define (square x) (* x x))

(define (abs x)
    (if (< x 0) (- x) x))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.01))

(define (better-good-enough? guess previous-guess)
    (< (abs (- guess previous-guess)) (/ guess 1000000)))

(define (avg x y) (/ (+ x y) 2))

(define (improve guess x)
    (avg guess (/ x guess)))

(define (sqrt-iter guess x)
    (if (better-good-enough? (improve guess x) guess)
        guess
        (sqrt-iter (improve guess x) x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(display (sqrt 9)) (newline)
(display (sqrt (+ 100 37))) (newline)
(display (sqrt (+ (sqrt 2) (sqrt 3)))) (newline)
(display (square (sqrt 1000))) (newline)
