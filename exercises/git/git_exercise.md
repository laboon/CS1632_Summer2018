# Git Exercise

## Introduction

This exercise will teach you about setting up your own Git repo and pushing to GitHub.

## What is Git?

Version control is very useful, as it gives you several benefits:

1. Sharing code is very easy
2. You can "time-travel" by making save points in your code.  Just like a save point in a video game, you can go back to an earlier point in development.
3. You can work on a large software project without interfering with others' work or having your own work interfered with.

It is extremely rare to work in a company nowadays which does NOT use version control system (VCS) of some kind.  Git is one VCS, and although far from the only one, it is extremely popular (and by far my personal favorite).  Git is the name of the VCS itself, and GitHub is simply a web-based interface and node in the distributed database that is git.

Set up Git and GitHub on your machine using the instructions here: https://help.github.com/articles/set-up-git/

## Creating a Repository

Now we are going to create a repository (often referred to as a _repo_) using the instructions here: This repo should be called "Ex1".

1. Go to the GitHub home page: https://github.com/.  If you are not logged in, log in with your username and password (and complete any necessary 2FA if you have that activated)
2. In the upper right-hand corner, click on your user icon and then click on Your Profile.
3. This will take you to your profile page.  The URL should be https://github.com/YOURUSERNAME.
4. Click on the "Repositories" tab.
5. Click on the green "New" button to create a new repository.
6. Give the repository name "Ex1".  The URL for this repo will not be https://github.com/YOURUSERNAME/Ex1
6. For the description, write out " I knew him, Horatio, a fellow of infinite jest, of most excellent fancy." or "As flies to wanton boys, are we to the gods; they kill us for their sport." or whatever description you want.
7. Click on the "Private" radio button.
8. Click on the checkbox "Initialize this repository with a README"
9. In the .gitignore pulldown, select Gradle.
9. For the license, feel free to license it however you want.  The result of your work is your intellectual property.  If you would like more detail on the different licenses, go here: https://opensource.org/licenses  If you don't care, feel free not to select a specific license.
9. Click the green "Create repository"

After following the steps above, you should be taken to your repo's home (https://github.com/YOURUSERNAME/Ex1).  If you scroll to the bottom, you should see the message you typed in the README.md file.

Congratulations, you now have a git repo!  Now let's add collaborators since it's private.

## Adding Collaborators

1. Click on the Settings tab
2. Click on Collaborators on the right-hand side of the page
3. You will need to re-enter your password, as it can be dangerous to have additional collaborators on a repo.  Someone who is a collaborator can not only view but modify your code any way that they see fit!
4. After entering your password, you will be allowed to add usernames.  Add your partner's username and mine (`laboon`).
5. Your partner should receive an email allowing them access to the repo once they agree to do so.

Now your repo is ready to be worked on, but it only exists on GitHub.  We need to make a link to it on our local machine.

## Connecting Up Your Computer to the git Repo

_Note: The following commands will work on most Unix and OS X systems.  If you are using Windows, you can use the git shell (came with the git installation) or Bash Subsystem for Windows.  Do not use Command Prompt.

On your local machine, make a directory where you would like the repo to exist locally, for example, your home directory.

```
cd ~
```

Now let's clone the repository to a subdirectory under this directory.  Replace my git username ("laboon") with your own username.

```
git clone https://github.com/laboon/ex1.git
```

This will create a subdirectory.  Go to it and look around.

```
cd ex1
ls -l
```

There's the README.md file you created!  This is showing you the last "save pointed" (a/k/a "committed") version.

Modify the README.md file using your favorite text editor.

```
vi README.md
```

or

```
emacs -nw README.md
```

or

```
subl README.md
```

or whatever.  At the end of the file, we are going to add some more wisdom.  Add the sentence:

```
Ducks like to quack, but quacks don't like to duck.
```

and save the file.  If you refresh the GitHub site, it's not there - the changes were only made locally.  In fact, since they haven't been committed, the changes are just kind of floating out there.  You can see them, but from git's perspective, they don't really exist.  Take a look at what git is seeing by typing:

```
git status
```

It will tell you something along these lines:

```
On branch master
Your branch is up-to-date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md
```

This means that you have a file which you made changes to, but is not committed.

If you type:

```
git diff
```

It will show you which lines were edited, added, or deleted.

Let's now commit all of our changes with the following command:

```
git commit -a -m "Added duck info"
```

This commits all of our changes (that is what the -a flag means) with the message "Added duck info".  We can look back into the past of this repo with the command:

```
git log
```

So let's try that now.  You should see output similar to the following:

```
commit fe813a4d1fd912958520a838318b462402718167
Author: laboon <laboon@gmail.com>
Date:   Fri Sep 11 15:43:08 2015 -0400

    Added duck info

commit 30c53ecdc89e5c3f808549865a4e33922454b44a
Author: Bill Laboon <laboon@users.noreply.github.com>
Date:   Fri Sep 11 14:51:36 2015 -0400

    Initial commit

```

That long string of letters and numbers is actually a hexadecimal (base 16) number which uniquely identifies that commit.  It's called a SHA (rhymes with "baa"), after the hashing algorithm used to create it.  It is (for all practical purposes) unique for each commit - think of it as a PeopleSoft number or SSN for your commit.  If you want to look at what a commit consists of, you can `show` it by using the show command with the SHA.  Try the following command, but use one of the SHAs that your computer shows - this particular one won't work.

```
git show 30c53ecdc89e5c3f808549865a4e33922454b44a
```

Make a new file in the same subdirectory as README.md using your text editor, called `test.rb`.  Copy and paste the following text to it:

```
puts 'test!'
```

Now type:

```
git status
```

You will see a message like:

```
Untracked files:
  (use "git add <file>..." to include in what will be committed)

	test.rb
```

We need to tell git which files we want it to track.  So type:

```
git add test.rb
```

Later, if you decide you don't want git to track a file anymore, you can use `git rm` instead of `git add` to remove it.

Now let us see the status again:

```
git status
```

You should see:

```
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   test.rb
```

After adding (it is _staged_ for commit), we will need to commit again.  We have made a change (_staged_ it) but not committed it.

```
git commit -a -m "added test.rb"
```

If you go back to the GitHub repo, you will notice that `test.rb` is not there, nor are our changes to README.md.  All changes were made locally.  We need to "push" our changes up to the GitHub server:

```
git push origin master
```

Git will inform you that it has succeeded:

```
Counting objects: 8, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (6/6), 501 bytes | 0 bytes/s, done.
Total 6 (delta 0), reused 0 (delta 0)
To git@github.com:laboon/ex1.git
   30c53ec..5bc5379  master -> master
```

Now if you look at the repo page on GitHub, you will see `test.rb`.  Your local machine's copy and the copy on GitHub are in sync.

You may want to make a few more changes and commits to Test.java, and push up to GitHub, to make sure you understand this.

NOTE: When turning in Deliverable 1, double-check that:

1. The TA and I have been added as collaborators
2. You see all the files you were expecting to see up on GitHub (this is what I will see)
3. You should probably clone down the repository to a DIFFERENT directory and test-run it so you are sure that everything is working properly