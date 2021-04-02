;checkEquality compares two lists; returns true if lists are equal, false otherwise
;   reversed-input list
;   input list
;   returns boolean
(define (checkEquality reversed-input input)
  (cond
    ((null? reversed-input) (null? input)) ;if no more characters left in a list, return true
    ((eq? (car reversed-input) (car input)) (checkEquality (cdr reversed-input) (cdr input))) ;call checkEquality recursively, removing first characters in lists
    (else #f) ;else return false
  )
)

;isPalindrome calls checkEquality and returns a string indicating if input is a palindrome
;   input list
;   returns string
(define (isPalindrome input)
  (newline) ;print newline
  (cond
    ((checkEquality (reverse input) input) (display ">>>Input string is a palindrome!<<<")) ;if input is a palindrome, output a string indicating that
    (else (display ">>>Input string is not a palindrome!<<<")) ;else let user know that it is not a palindrome
  )
)

(display "Please enter your word: ") ;ask for user input
(isPalindrome (string->list (symbol->string (read)))) ;grab user input, translate it from chars to list and call isPalindrome function
(newline)
(newline)