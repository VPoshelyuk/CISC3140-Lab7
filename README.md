# CISC3140-Lab7
## Practice expressing the solution to problems declaratively in Scheme.
---
### About
---
For Lab 7 I decided to work on a program that checks if the input is a palindrome.   
This program takes a user input, transforms it from a string to a list of characters and then calls an isPalindrome function with a newly created list as an argument.   
isPalindrome then calls a checkEquality function passing an input and reversed input as arguments. checkEquality then calls itself recursively while the first character of the lists are equal, while removing them on every run, if both lists end up empty checkEquality returns true indicating that the input string is a palindrome, otherwise checkEquality function returns false.   
If checkEquality returns true, isPalindrome outputs a string indicating that input is a palindrome, otherwise isPalindrome returns a string indicating that input is not a palindrome.
