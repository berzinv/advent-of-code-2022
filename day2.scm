(module
 day2 (answer1 answer2)
 (import scheme
         (only matchable match)
         (only utilities sum))

 (define (score1 game)
   (match game
          ("A X" 4)
          ("A Y" 8)
          ("A Z" 3)
          ("B X" 1)
          ("B Y" 5)
          ("B Z" 9)
          ("C X" 7)
          ("C Y" 2)
          ("C Z" 6)))

  (define (score2 game)
   (match game
          ("A X" 3)
          ("A Y" 4)
          ("A Z" 8)
          ("B X" 1)
          ("B Y" 5)
          ("B Z" 9)
          ("C X" 2)
          ("C Y" 6)
          ("C Z" 7)))
 
 (define (score-games score-func games)
   (map score-func games))
 
 (define (answer1 input)
   (sum (score-games score1 input)))
 
 (define (answer2 input)
   (sum (score-games score2 input)))

)
