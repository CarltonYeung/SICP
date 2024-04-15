(define (square x) (* x x))

(define (abs x)
    (if (< x 0) (- x) x))

(define (cbrt x)
    (define (good-enough? guess)
        (< (abs (- guess (improve guess))) (/ guess 1000000)))

    (define (improve guess)
        (/ (+ (/ x (square guess)) (* 2 guess)) 3))

    (define (cbrt-iter guess)
        (if (good-enough? guess)
            guess
            (cbrt-iter (improve guess))))

    (cbrt-iter 1.0))

(display (cbrt 9)) (newline)
(display (cbrt (+ 100 37))) (newline)
(display (cbrt (+ (cbrt 2) (cbrt 3)))) (newline)
(display (square (cbrt 1000))) (newline)
