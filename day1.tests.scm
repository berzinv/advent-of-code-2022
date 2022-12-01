(import test
        (only utilities file->lines)
        (prefix day1 day1:))

(define calories (file->lines "input.day1.txt"))

(test-group "Day 1 test input"
            (test "Answer 1" 24000 (day1:answer1 (file->lines "input.day1.test.txt")))
            (test "Answer 2" 45000 (day1:answer2 (file->lines "input.day1.test.txt"))))


(test-group "Day 1 real input"
            (test "Answer 1"  68442 (day1:answer1 (file->lines "input.day1.txt")))
            (test "Answer 2"  204837 (day1:answer2 (file->lines "input.day1.txt"))))


(test-exit)

