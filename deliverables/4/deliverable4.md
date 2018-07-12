# CS 1632 - Software Quality Assurance
Summer Semester 2018

DUE 2 AUG 2018

## Deliverable 4

In this deliverable, you and a partner will write software to verify if a simple blockchain is valid.

Under _no_ circumstances should the program crash or should the user see an exception or stack trace directly.  You should handle all edge cases that might be thrown at you, such as a non-existent file, no arguments, different failure modes, etc.

The program shall accept one argument, which is the name of a file which should contain a valid Billcoin blockchain (see billcoin.md in this directory for the rules of Billcoin).  Your program will read in and either determine if it is valid (in which case you should print out all of the address which have billcoins and how many), or invalid (in which case you should print out what the error is).

The program shall called verifier.rb.  Your repository shall be named D4.  This program must be written in Ruby and use minitest for the unit tests.  This program must use rubocop with the attached .rubocop.yml configuration and SimpleCov as described in class.

You should work on making this program execute as quickly as possible (i.e., minimize real execution time).  You may use all computing resources available to you.  This will be run on a four-core system with eight gigabytes of RAM.  No other programs will be running at the time.

You will use the flamegraph gem to determine execution "hot spots".

You will use the `time` command (or Measure-Command for Windows) to determine total execution time.

If you have done so, you should explain how your program has been sped up in your summary.

## Format
Every assignment should have a title page with:
* The name of the students in the group and their GitHub usernames
* A link to your repository
* The title "CS 1632 - DELIVERABLE 4: Performance Testing "

There is no need to print out the code BUT YOU MUST PRINT OUT AND HAND IN THE DELIVERABLE PAPERWORK.  It should be available on GitHub BY THE BEGINNING OF CLASS.

For the summary, describe how you profiled the application in approximately one page.  You should answer the following questions in your summary:

1. What was most challenging about this deliverable?
1. What kind of edge cases and failure modes did you consider?
1. Using the flame graph, what methods were taking up the most CPU time?
1. Did you make any changes based on the flame graph or timing?

The summary should be approximately a page.

On a separate page, you should include a screenshot of the flame graph.  You should  _also_ include the generated .html file in your repository.

You may experience issues rendering very large flamegraphs on your browser, especially if you use `long.txt`.  Feel free to use the flamegraph for `sample.txt` if this is the case.

There should be at least sixteen unit tests and statement coverage of at least 80%.  It is up to you if you would like to use more, use mocks/doubles/stubs or not, etc.  There just must be at least sixteen valid unit tests and statement coverage of 80% or greater.

You should time the program with the `long.txt` file three times AND indicate the mean and median amount of real ("wall clock") time it took to execute.  You can do this with the `time` command in Unix-like systems (Linux, OS X, BSD) or the `Measure-Command` command in PowerShell on Windows systems.  All three of these times should be listed ALONG with the MEAN and MEDIAN time to execute the program with `long.txt` on a separate page.

The fastest three programs to _correctly_ execute my generated equivalent of a long blockchain will receive +3, +5, and +10 bonus points for the members of the group, respectively.

Note that the blockchain files I will run on it will be similar to, but different, than the example blockchain files shown here.  These are just to give you examples of possible errors in the Billcoin blockchain files.

As this is due the last day of class, NO late assignments will be accepted.

## Grading
* Summary - 10%
* Flame graph - 10%
* Final times (>= 3 of each + mean) included - 5%
* Functionality - 45%
* Unit Tests (including statement coverage) - 30%
* -2 for each Rubocop error past three, up to -10 points off
