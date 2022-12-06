(module
 utilities
 (file->string
  file->lines
  map-iota
  file->sexp
  text->file
  sort-descending
  sort-ascending
  sum
  list-chunk
  list-items-unique?
  rotate-matrix)
 (import scheme
         srfi-1
         (chicken io)
	 (chicken base)
         (chicken sort)
         (only traversal remove-duplicatesq))
 
 (define (file->string filename)
   (with-input-from-file filename read-string))

 (define (file->lines filename)
   (with-input-from-file filename read-lines))

 (define (map-iota fct cnt)
   (map fct (iota cnt)))

 (define (file->sexp filename)
   (eval (with-input-from-file filename read)))

 
 (define (text->file filename data)
   (with-output-to-file filename
     (lambda ()
       (print data))))

 (define (sort-descending lst)
   (sort lst (lambda (a b) (> a b))))

 (define (sort-ascending lst)
   (sort lst (lambda (a b) (< a b))))

 (define (sum lst)
   (apply + lst))

 (define (list-chunk lst n)
   (if (not (equal? lst '()))
       (cons (take lst n) (list-chunk (drop lst n) n))
       '() ))

 (define (list-items-unique? lst)
   (= (length lst) (length (remove-duplicatesq lst))))

 (define (rotate-matrix m)
   (apply map list (reverse m)))

 )

