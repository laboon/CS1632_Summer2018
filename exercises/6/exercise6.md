# CS 1632 - Software Quality Assurance

## Exercise 6

For this assignment, you and a partner will update the "guessing game" in `/sample_code/sinatra_example` and add systems-level, automated black-box tests using Katalon Automation Recorder.  Your tests should focus on the functionality you will add (below).

I recommend you do a minimum of six tests, checking various base, edge, and corner cases.  However, do not focus on the number of tests too heavily; I am more concerned that you cover a broad variety of cases, and ones which are focused and still likely to find defects.

I also recommend that you write the code for the test mode first, as it will make your other testing much easier.  Then write the Katalon tests for the test mode.  Then you can work on the code for the second requirement, then finally the Katalon tests for the second requirement.

## Functionality to Add

1. Add a "test" mode.  If a param called "test" with any integer value is passed in, the secret number should be set to whatever the test value is.  If the test parameter cannot be interpreted as an integer or is an invalid integer (i.e., one greater than 100 or less than 1), the secret number should be set to 50.
2. Check to see if the user's guess is GREATER than 10 away (in either direction) from the secret number.  If so, add the line "You're WAY off!" to the output page.  For example, if the secret number is 12 and the user's guess is 14, the page should display as normal.  If the user's guess is 22, the message would also NOT be shown (22 - 12 = exactly 10).  However, if the user's guess is 23 (22 - 12 = 11, greater than 10), the "You're WAY off!" message should be displayed.

## Grading

This is an exercise and thus not graded.  Please feel free to speak to or email me to discuss any problems that you have.  However, if you can complete it by the end of class, you will receive one bonus point on D3.
