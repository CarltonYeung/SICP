(define (square x) (* x x))

(define (abs x)
    (if (< x 0) (- x) x))

(define (better-good-enough? guess previous-guess)
    (< (abs (- guess previous-guess)) (/ guess 1000000)))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cbrt-iter guess x)
    (if (better-good-enough? (improve guess x) guess)
        guess
        (cbrt-iter (improve guess x) x)))

(define (cbrt x) (cbrt-iter 1.0 x))

(display (cbrt 9)) (newline)
(display (cbrt (+ 100 37))) (newline)
(display (cbrt (+ (cbrt 2) (cbrt 3)))) (newline)
(display (square (cbrt 1000))) (newline)
