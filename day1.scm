(import (only utilities file->lines sort-descending)
        (only simple-loops do-list)
        (only (chicken sort) sort)
        (only srfi-1 take)
        (only srfi-13 string-null?))

(define calories (file->lines "input.day1.txt"))

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
 
(define calories-by-elves (sum-calories calories))
(print (car calories-by-elves)) ; Answer 1
(print (apply + (take calories-by-elves 3))) ; Answer 2
