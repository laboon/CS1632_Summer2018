# CS 1632 - Software Quality Assurance
Summer Semester 2018
ASSIGNED 26 JUNE 2018, DUE 12 JULY 2018 (Late Due Date 15 JULY 2018: -15 points)

## Deliverable 3

For this assignment, you and a partner will create a simple website and test it using systems-level testing.

Requirements for this program are in the `requirements.md` file in this directory.  In case of ambiguity, please see the sample output as an example of what to display and how the system should work.

All code and tests should be on GitHub in a private repository accessible to me.

Your repository MUST be named D3.  If you are going to have a separate repository for extra credit, it MUST be named D3_EC.

## Format
You should turn in a title page with:

* The title "CS 1632 - DELIVERABLE 3: Automated System Testing of a Web Application"
* The names of the people in the group and their GitHub usernames
* The URL of your code and tests on GitHub

ENSURE THAT THE THE TA AND I ARE ADDED AS A COLLABORATOR ON GITHUB!  My username is `laboon`.  The TA's username is `mraoufi`.  You will lose an automatic 10 points if either I or the TA cannot access your repository.

Before turning this assignment in, I HIGHLY recommend you double-check that all of the code that you think is committed is in fact committed by (1) looking at the code on the GitHub web interface and (2) cloning it down to a new directory on your machine and trying to run it from there.

Add a short ( < 1 page ) description of issues you faced when writing this code and tests.  If any tests you wrote fail, they should be included here, along with why you think that they are failing.

After this, ON A SEPARATE PAGE, include a screen shot of the executed unit tests (this means a SCREENSHOT of the Katalon tool after execution of the test suite).  If a test doesn't pass, it should be included in the concerns section above.  Ideally, for a perfect grade, all tests should be green (passing).  However, if you have what you think is a valid test and it is not passing, I would prefer that you include a defect report (in the proper template!) rather than just deleting it.  Knowing that a defect exists and reporting it is much better than having it discovered by the customer (me)!

There is no need to print out the code itself.  It should be on GitHub BY THE BEGINNING OF CLASS.

There should be a minimum of sixteen (16) Katalon tests, checking all requirements (as measured by the traceability matrix).  Note that this is an ABSOLUTE MINIMUM value.  You may have more tests if you like.

Keep in mind some of the things we learned when doing manual testing; you should be cognizant of equivalence classes, boundary values, etc. and focus on them.

For this project, you should endeavour to get a good sampling of different equivalence classes and success/failure cases.

You should be able to handle any invalid input coming into the program and should test for such situations.  Invalid input could include bad parameter values, bad parameter names, bad URLs, etc.  It is up to you to think of proper edge and corner cases and how to respond to these failures!

## Grading

Like D1, you should line up requirements with test cases or develop a traceability matrix, but requirements are still useful for doing exploratory testing of your finished product.

```
* Summary and Testing concerns - 10%
* Screen shot or printout of test results - 5%
* Functionality - 30%
* Katalon tests - 50%
* Traceability matrix - 5%
```

## Grading Breakdown

Please feel free to email me or come to office hours to discuss any problems you have.
