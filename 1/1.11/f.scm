; f(n) = f(n-1) + 2f(n-2) + 3f(n-3)

; Recursive

(define (f n)
    (if (< n 3)
        n
        (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(display (f 0)) (display " ")
(display (f 1)) (display " ")
(display (f 2)) (display " ")
(display (f 3)) (display " ")
(display (f 4)) (display " ")
(display (f 5)) (display " ")
(display (f 6)) (display " ")
(display (f 7)) (display " ")
(newline)


; Iterative

(define (f-iter n)
    (define (f-iter-helper fn1 fn2 fn3 count)
        (if (= count n)
            fn1
            (f-iter-helper (+ fn1 (* 2 fn2) (* 3 fn3)) fn1 fn2 (+ count 1))))

    (if (< n 3)
        n
        (f-iter-helper 2 1 0 2)))  ; n=2, (f-iter-helper f(2)=2 f(1)=1 f(0)=0)

(display (f-iter 0)) (display " ")
(display (f-iter 1)) (display " ")
(display (f-iter 2)) (display " ")
(display (f-iter 3)) (display " ")
(display (f-iter 4)) (display " ")
(display (f-iter 5)) (display " ")
(display (f-iter 6)) (display " ")
(display (f-iter 7)) (display " ")
(newline)
