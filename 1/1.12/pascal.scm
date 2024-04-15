(define (pascal row col)
    (if (or (= col 0)
            (= row col))
        1
        (+ (pascal (- row 1) (- col 1))
           (pascal (- row 1) col))))

(display (pascal 0 0)) (newline)
(display (pascal 1 0)) (display " ") (display (pascal 1 1)) (newline)
(display (pascal 2 0)) (display " ") (display (pascal 2 1)) (display " ") (display (pascal 2 2)) (newline)
(display (pascal 3 0)) (display " ") (display (pascal 3 1)) (display " ") (display (pascal 3 2)) (display " ") (display (pascal 3 3)) (newline)
(display (pascal 4 0)) (display " ") (display (pascal 4 1)) (display " ") (display (pascal 4 2)) (display " ") (display (pascal 4 3)) (display " ") (display (pascal 4 4)) (newline)
(display (pascal 5 0)) (display " ") (display (pascal 5 1)) (display " ") (display (pascal 5 2)) (display " ") (display (pascal 5 3)) (display " ") (display (pascal 5 4)) (display " ") (display (pascal 5 5)) (newline)
