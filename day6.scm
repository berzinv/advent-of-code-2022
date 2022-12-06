(module
 day6
 (answer1 answer2)
 (import scheme
         (chicken base)
         (only utilities list-items-unique?)
         (only traversal remove-duplicatesq)
         (only srfi-1 take))

 (define (search-distinct signal count)
  (let loop ((signal signal) (pos 0))
    (cond
      ((list-items-unique? (take signal count)) pos)
      (else
       (loop (cdr signal) (add1 pos))))))

 (define (answer1 signal)
  (+ 4 (search-distinct signal 4)))

 (define (answer2 signal)
   (+ 14 (search-distinct signal 14)))

)
