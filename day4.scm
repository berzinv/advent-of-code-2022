(module
 day4
 (parse-line fully-contains? overlaps? answer1 answer2)
 (import scheme
         (chicken base)
         (only utilities)
         (only (chicken irregex) irregex-extract)
         (only srfi-1 filter first second third fourth iota lset-difference))

 (define (parse-line line)
   (let ((parsed (map string->number (irregex-extract "[0-9]+" line))))
     (values (cons (first parsed) (second parsed))
             (cons (third parsed) (fourth parsed)))))

 (define (fully-contains? pair1 pair2)
   (or (and (<= (car pair1) (car pair2))
            (>= (cdr pair1) (cdr pair2)))
       (and (<= (car pair2) (car pair1))
            (>= (cdr pair2) (cdr pair1)))))
 
 (define (overlaps? p1 p2)
   (or (and (<= (car p1) (car p2))
            (<= (car p2) (cdr p1)))
       (and (<= (car p1) (cdr p2))
            (<= (cdr p2) (cdr p1)))
       
       (and (<= (car p2) (car p1))
            (<= (car p1) (cdr p2)))
       (and (<= (car p2) (cdr p1))
            (<= (cdr p1) (cdr p2)))))
 
 (define (answer1 input)
   (length (filter (lambda (line)
                     (call-with-values (lambda () (parse-line line))
                       (lambda (pair1 pair2) (fully-contains? pair1 pair2))))
                   input)))

 (define (answer2 input)
   (length (filter (lambda (line)
                     (call-with-values (lambda () (parse-line line))
                       (lambda (pair1 pair2) (overlaps? pair1 pair2))))
                   input)))

)
