(import test
        (only utilities file->lines)
        (prefix day1 day1:))

(define day1-test-input (file->lines "input.day1.test.txt"))
(define day1-real-input (file->lines "input.day1.txt"))

(test-group "Day 1 test input"
            (test "Answer 1" 24000 (day1:answer1 day1-test-input))
            (test "Answer 2" 45000 (day1:answer2 day1-test-input)))


(test-group "Day 1 real input"
            (test "Answer 1"  68442 (day1:answer1 day1-real-input))
            (test "Answer 2"  204837 (day1:answer2 day1-real-input)))


(test-exit)

