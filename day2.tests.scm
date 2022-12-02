(import test
        (only utilities file->lines)
        (prefix day2 day2:))

(define day2-test-input (file->lines "input.day2.test.txt"))
(define day2-real-input (file->lines "input.day2.txt"))

(test-group "Day 2 test input"
            (test "Answer 1" 15 (day2:answer1 day2-test-input))
            (test "Answer 2" 12 (day2:answer2 day2-test-input)))


 (test-group "Day 1 real input"
             (test "Answer 1"  11841 (day2:answer1 day2-real-input))
             (test "Answer 2"  13022 (day2:answer2 day2-real-input)))


(test-exit)

