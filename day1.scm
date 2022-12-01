(module
 day1
 (group-calories sum-calories answer1 answer2)
 
 (import scheme
         (only utilities file->lines sort-descending sum)
         (only srfi-13 string-null?)
         (only srfi-1 take))

(define (group-calories calories)
  (let loop ((current '())
             (accumulator '())
             (calories calories))
    (cond
      ((null? calories) (cons current accumulator))
      ((string-null? (car calories)) (loop '() (cons current accumulator) (cdr calories)))
      (else
       (loop (cons (string->number (car calories)) current) accumulator (cdr calories))))))

(define (sum-calories calories)
  (sort-descending (map (lambda (lst) (sum lst)) calories)))

 (define (answer1 calories)
   (car (sum-calories (group-calories calories))))

 (define (answer2 calories)
   (sum (take (sum-calories (group-calories calories)) 3)))
 
)
