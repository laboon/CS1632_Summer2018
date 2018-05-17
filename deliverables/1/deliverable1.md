# CS 1632 - Software Testing
Summer Semester 2018

* DUE:

## Deliverable 1

For this assignment, you and a partner will determine a test plan for the simple game Super Connect-Four, based on the requirements listed in the file `requirements.md`.  There are several known defects in the software; you will need to find, report on, and fix at least three.  Additionally, a traceability matrix showing the mapping of test cases to requirements is required.

Time will be given in class to group yourself into groups.  There should be two and only two members of a group.

There should be *at least* twice as many test cases as requirements, although I would normally expect several test cases per requirement.  Note that this does not mean that you should aim to ONLY have this many.  I expect you to have enough test cases to properly test the application and find the defects.  However, if the number of test cases is more than 4x or 5x the number of requirements, you are probably overtesting.

Each requirement should have AT LEAST one test case associated with it, and each test should have EXACTLY ONE requirement associated with it.  This can easily be checked via a traceability matrix (which you should also deliver).

Test cases should mention all necessary preconditions, execution steps, and postconditions.

It is NOT necessary to make multiple test plans inside a test suite; it is enough for there to be one test plan.

I expect you to test three edge or corner cases as part of the test plan.  These should be marked in the description of the relevant test case.

It is expected that you actually execute the test plan in order to find the defects.  There are AT LEAST three.  Full credit will be given only to those who properly find and describe at least three.  While you are not expected to find *all* of the defects, a reasonable test plan should definitely find at least three.  This is an intentionally target-rich environment.

## Format
Please hand in the paper to me with a cover page with:
* The name of the project under test ("Super Connect Four")
* The names of the people in the group and their GitHub usernames
* A link to the private repository on GitHub with the fixed files (`connect_four.rb` and `game.rb`, along with any others you may have created yourself)
* The title "CS 1632 - DELIVERABLE 1: Test Plan and Traceability Matrix"

There should be a short introduction (a few paragraphs) in which you may note any concerns or difficulties you may have had or anticipate with the testing process.  You should also note why you considered certain test cases, how you thought of edge cases, etc.

This should be followed ON A NEW PAGE by the list of test cases.  You may name or number them any way you wish, but be consistent.  You should write them out in this format -

	IDENTIFIER:
	DESCRIPTION:
	PRECONDITIONS:
	EXECUTION STEPS:
	POSTCONDITIONS:

The IDENTIFIER is some value which will UNIQUELY specify the test case.  It can be a number, word or any other mnemonic (e.g. TEST-WALL-SPACING, TEST-NUM-PROFESSORS).

ON A SEPARATE PAGE, a traceability matrix should be provided mapping the test cases with their associated requirements.  Remember that all requirements should map to AT LEAST ONE test case, and all test cases should map to EXACTLY ONE requirement.

Finally, ON A SEPARATE PAGE, list at least three defects found.  The defects should follow the defect reporting template:

	 SUMMARY:
	 DESCRIPTION:
	 REPRODUCTION STEPS:
	 EXPECTED BEHAVIOR:
	 OBSERVED BEHAVIOR:

You should then fix these defects.

Other attributes of a defect (e.g., SEVERITY or IMPACT) are not necessary.  The test case which found the defect should be listed as part of the DESCRIPTION.

## Grading
* Introduction: 10% of grade
* Test Plan: 30% of grade
* Traceability Matrix: 15% of grade
* Defects Found and Described: 15% of grade
* Defects Fixed: 30% of grade

## Super Connect Four
This is similar to the child's game "Connect Four" - with a twist.  Users play against other users on the same computer - there is no AI player.

The playing board is a two-dimensional array and players can drop their checker (marked with either an X or an O) and it will fall to the "lowest" spot that is still empty.  Empty spots are indicated by the `.` character, X checkers by the `X` character, and O checkers by the `O` character.  Players can indicate which column they want by typing in the number.

For example, at the start, there are no checkers, so dropping a checker will always drop the lowest spot.  Dropping another checker in the same column will send it to the second-lowest spot.  If a column is full, you are not allowed to drop a checker there.

Alternatively, players can either "flip" or "rotate" the board.  Flipping the board flips everything around, and checkers fall if there is nothing supporting them.  For instance:

```
01234
.....
....X
....O
.X..X
XOXOO
Player O, enter move > flip
01234
.....
....O
....X
.O..O
XXXOX
```

Here, the X at row 5, column 0 was moved to row 0, column 0.  It then "fell down" to the "floor", thus leading to no net change.  In column 1, the X at row 5, column 1 moved to row 0, column 1 and the O in row 4 moved to the row 1.  There were now three empty spaces beneath them, and so they "fell down" to their current locations.

Rotating the board rotates it 90 degrees to the right.  Pieces will fall down just as in flipping the board.

A "connect four" wins the game.  A "connect four" consists of four checkers of the same type next to each other, horizontally, vertically, or diagonally.

For example:

```
Player O, enter move > 3
01234
.....
.....
X....
X....
XOOO.
Player X, enter move > 0
01234
.....
X....
X....
X....
XOOO.
Player X won!
```

If flipping or rotating the board causes a "connect four" to occur, that player wins on that turn.

```
Player O, enter move > 4
01234
.....
.....
....O
.X..O
XOXXO
Player X, enter move > flip
01234
.....
.....
....O
.O..O
XXXXO
Player X won!
```

Note that the flip caused the X in column 1 to be in the bottom spot, causing there to be four X's in a row, thus causing Player X to win the game.

The program expects one argument, a nonnegative integer, to act as the size of the board.  For example, passing in the value "5" would create a 5 x 5 board (25 possible spots for the checkers).  If the player enters anything other than a single nonnegative integer, the program should display an error message informing the user of the issue and shut down.

```
[laboon@ekaterina ~/pitt/CS1632_Summer2018/deliverables/1]
(23261) $ ruby connect_four.rb
Usage:
ruby connect_four.rb *x*
*x* should be a nonnegative integer

[laboon@ekaterina ~/pitt/CS1632_Summer2018/deliverables/1]
(23262) $ ruby connect_four.rb -6
Usage:
ruby connect_four.rb *x*
*x* should be a nonnegative integer

[laboon@ekaterina ~/pitt/CS1632_Summer2018/deliverables/1]
(23263) $ ruby connect_four.rb beepbeep
Usage:
ruby connect_four.rb *x*
*x* should be a nonnegative integer

[laboon@ekaterina ~/pitt/CS1632_Summer2018/deliverables/1]
(23264) $ ruby connect_four.rb 7 3 4 5
Usage:
ruby connect_four.rb *x*
*x* should be a nonnegative integer

[laboon@ekaterina ~/pitt/CS1632_Summer2018/deliverables/1]
(23265) $ ruby connect_four.rb 7
0123456
.......
.......
.......
.......
.......
.......
.......
Player X, enter move >
```

The specific requirements are listed in the file requirements.txt.

Please feel free to email me at laboon at cs pitt edu or come to office hours to discuss any problems you have.

## Sample Runs
