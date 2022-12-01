(module
 utilities
 (file->string
  file->lines
  map-iota
  file->sexp
  text->file
  sort-descending
  sort-ascending
  sum)
 (import scheme
         srfi-1
         (chicken io)
	 (chicken base)
         (chicken sort))
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

 )

