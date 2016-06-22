# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    Version control is a system that helps us keep track of the entire history of changes made to a project or file and provides a simple process for merging these changes together.  It is useful because it allows multiple people to collaborate on a single project by allowing them to copy project folders, make their own changes and then submit requests to merge them with the master file, thereby allowing everyone on the team to work on one centralized set of files.  

* What is a branch and why would you use one?
    A branch is a copy of a git repository that is used to make feature changes to the file(s) while leaving the master code base untouched so that if any errors are made, they are made in isolation on the branch and not on the master file or folder.  These changes on the branch can then be reviewed by the whole team when they are submitted using a pull request.  Comments can then be made on this pull request as well as follow-up commits to suggest edits to the changes being made.  All this allows for greater and more efficient collaboration when a team is working on a development project. 

* What is a commit? What makes a good commit message?
    A commit is a save point in the Git work flow and consists of one or more files that have been modified within a git repository.  The file(s) first need to be staged for committing and then are committed with an included **message** of what specific changes have been made to the file(s).  A commit also has a unique ID which is randomly assigned to it, as well as an author and a time stamp so it is clear *who* has made the changes and *when* they were submitted.  

* What is a merge conflict?
    A merge conflict happens when the proposed changes in a pull request conflict with other changes that have been made in the same file.  A lot of times this happens because of extra whitespace or an IDE that is automatically formatting its output.  You can open the file where the conflict occurs and delete the code that you don't want along with extra markers git has added to point out the conflict (i.e. ====, <<<, >>>>) as well as branch names to denote the source of the conflict. 

    added a word