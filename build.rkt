
(require make)
(require racket/system)

(define (make-pdf basename)
    (system (string-append "pdflatex " basename)))

(make/proc
 (list
    (list "10-integer-linear-programming.pdf"
          '("10-integer-linear-programming.tex")
          (lambda () (make-pdf "10-integer-linear-programming.tex")))))
          
