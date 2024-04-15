(define (square x) (* x x))

(define (abs x)
    (if (< x 0) (- x) x))

(define (avg x y) (/ (+ x y) 2))

(define (sqrt x)
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.01))

    (define (better-good-enough? guess)
        (< (abs (- guess (improve guess))) (/ guess 1000000)))

    (define (improve guess)
        (avg guess (/ x guess)))

    (define (sqrt-iter guess)
        (if (better-good-enough? guess)
            guess
            (sqrt-iter (improve guess))))

    (sqrt-iter 1.0))

(display (sqrt 9)) (newline)
(display (sqrt (+ 100 37))) (newline)
(display (sqrt (+ (sqrt 2) (sqrt 3)))) (newline)
(display (square (sqrt 1000))) (newline)
