# Requirements for Web Application

1. The system shall run on localhost, port 4567, and thus accessible via "http://localhost:4567", after running the command `ruby number.rb`.
2. Upon accessing root ("/", i.e., http://localhost:4567), the system shall display a page with three textboxes and three submit buttons, arranged together and each labeled.
3. The first set shall be labeled "Fibonacci" (with the button labeled "Calculate"), the second "Factorial" (with the button labeled "Calculate"), and the third "Say hello" (with the button labeled "Hi").
4. If the Calculate button in the Fibonacci section is pressed, the value in the Fibonacci textbox will be interpreted as an integer and a new page will be shown which displays "Fibonacci(n) = m" where n is the input integer and m is the nth value of the Fibonacci sequence.
5. If the Calculate button in the Factorial section is pressed, the value in the Factorial textbox will be interpreted as an integer and a new page will be shown which displays "Factorial(n) = m" where n is the input integer and m is equal to n! (n factorial).
6. If the "Hi" button in the "Say hello" section is pressed, the value in the "Say hello" textbox will be interpreted as a string and a new page will be shown which displays "Hello, X!" where X is the capitalized version of the input string (e.g., "bob" becomes "BOB", "jAnE" becomes "JANE", "XIAOTING" becomes "XIAOTING".
7. Any invalid data entered in the Fibonacci or Factorial textbox (e.g. blank text, "poodle", etc.) shall be considered to be the value 1.
8. Values entered in textboxes other than the one for which the button is pressed shall be ignored.  For example, if the user enters "7" in the Fibonacci textbox, and enters "Bob" in the "Say hello" textbox, then presses the Fibonacci
9. Every result page (as enumerated in requirements 3, 4, and 5, above) shall contain a link labeled "Back to main" which will take the user to the main page.
10. If a user goes to a URL other than root (e.g., "http://localhost:4567/hotdog") the the system shall display a page stating, in an h1 tag, "ERROR", and in regular text, "That page does not exist", along with a 404 error code.
