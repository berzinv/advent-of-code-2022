(import test
        (only utilities file->lines)
        (prefix day1 day1:)
        (prefix day2 day2:)
        (prefix day3 day3:)
        (prefix day4 day4:))

(define day1-test-input (file->lines "input.day1.test.txt"))
(define day1-real-input (file->lines "input.day1.txt"))

(test-group "Day 1 test input"
            (test "Answer 1" 24000 (day1:answer1 day1-test-input))
            (test "Answer 2" 45000 (day1:answer2 day1-test-input)))

(test-group "Day 1 real input"
            (test "Answer 1"  68442 (day1:answer1 day1-real-input))
            (test "Answer 2"  204837 (day1:answer2 day1-real-input)))

(define day2-test-input (file->lines "input.day2.test.txt"))
(define day2-real-input (file->lines "input.day2.txt"))

(test-group "Day 2 test input"
            (test "Answer 1" 15 (day2:answer1 day2-test-input))
            (test "Answer 2" 12 (day2:answer2 day2-test-input)))

(test-group "Day 2 real input"
            (test "Answer 1"  11841 (day2:answer1 day2-real-input))
            (test "Answer 2"  13022 (day2:answer2 day2-real-input)))

(define day3-test-input (file->lines "input.day3.test.txt"))
(define day3-real-input (file->lines "input.day3.txt"))

(test-group "Day 3 test input"
            (test "Answer 1" 157 (day3:answer1 day3-test-input))
            (test "Answer 2" 70 (day3:answer2 day3-test-input)))

(test-group "Day 3 real input"
            (test "Answer 1"  8088 (day3:answer1 day3-real-input))
            (test "Answer 2"  2522 (day3:answer2 day3-real-input)))

(define day4-test-input (file->lines "input.day4.test.txt"))
(define day4-real-input (file->lines "input.day4.txt"))

(test-group "Day 4 test input"
            (test "Answer 1" 2 (day4:answer1 day4-test-input))
            (test "Answer 2" 4 (day4:answer2 day4-test-input)))

(test-group "Day 4 real input"
            (test "Answer 1"  431 (day4:answer1 day4-real-input))
            (test "Answer 2"  823 (day4:answer2 day4-real-input)))

(test-exit)

