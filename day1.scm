(module
 day1
 (answer1 answer2)
 
 (import scheme
         (only utilities file->lines sort-descending)
         (only simple-loops do-list)
         (only (chicken sort) sort)
         (only srfi-1 take)
         (only srfi-13 string-null?))

 (define (sum-calories calories)
   (let ((cumulative '())
         (current 0))
     (do-list (item calories)
              (cond
               ((string-null? item)
                (begin
                  (set! cumulative (cons current cumulative))
                  (set! current 0)))
               (else
                (set! current (+ current (string->number item))))))
     (begin
       (set! cumulative (cons current cumulative))
       (sort-descending cumulative))))
 
 (define (answer1 calories)
   (car (sum-calories calories)))

 (define (answer2 calories)
   (apply + (take (sum-calories calories) 3)))
 
)
