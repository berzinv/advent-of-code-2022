(module
 day1
 (group-calories sum-calories answer1 answer2)
 
 (import scheme
         (only utilities file->lines sort-descending)
         (only simple-loops do-list)
         (only (chicken sort) sort)
         (only srfi-1 take)
         (only srfi-13 string-null?))

 ;; (define (sum-calories calories)
 ;;   (let ((cumulative '())
 ;;         (current 0))
 ;;     (do-list (item calories)
 ;;              (cond
 ;;               ((string-null? item)
 ;;                (begin
 ;;                  (set! cumulative (cons current cumulative))
 ;;                  (set! current 0)))
 ;;               (else
 ;;                (set! current (+ current (string->number item))))))
 ;;     (begin
 ;;       (set! cumulative (cons current cumulative))
 ;;       (sort-descending cumulative))))

(define (group-calories calories)
  (let loop ((current '())
             (accumulator '())
             (calories calories))
    (cond
      ((null? calories) (cons current accumulator))
      ((string=? "" (car calories)) (loop '() (cons current accumulator) (cdr calories)))
      (else
       (loop (cons (string->number (car calories)) current) accumulator (cdr calories))))))

(define (sum-calories calories)
  (sort-descending (map (lambda (lst) (apply + lst)) calories)))

 (define (answer1 calories)
   (car (sum-calories (group-calories calories))))

 (define (answer2 calories)
   (apply + (take (sum-calories (group-calories calories)) 3)))
 
)
