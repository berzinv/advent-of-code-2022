(module
 day3
 (priority common-item-bag common-item-group answer1 answer2)
 (import scheme
         (only srfi-1 take drop lset-intersection)
         (only matchable match)
         (only utilities sum list-chunk))

 (define (priority item)
   (cond
    ((char-upper-case? item) (- (char->integer item) 38))
    ((char-lower-case? item) (- (char->integer item) 96))))

 (define (common-item-bag bag)
   (let* ((compartment-size (/ (length bag) 2))
          (left (take bag compartment-size))
          (right (drop bag compartment-size))
          (common-item (lset-intersection char=? left right)))
     (car common-item)))
 
 (define (common-item-group group)
   (match group
          ((a b c) (car (lset-intersection char=? a b c)))))
 
 (define (answer1 input)
   (sum (map (lambda (item)
               (priority (common-item-bag (string->list item))))
             input)))

 (define (answer2 input)
   (let ((groups (list-chunk (map string->list input) 3)))
     (sum (map priority (map common-item-group groups)))))
)

