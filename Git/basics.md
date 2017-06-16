# Git Version Control

## Functional Examples

#### Creating Repositories
```unix
git init
touch test.py
git add -A
git commit -m 'Initial Commit'
git remote add origin https://github.com/(username)/(repository name).git
git push origin master
```
This pithy segment of code helps you accomplish many things.

The 'git init' statement creates a new .git file within your current directory. This git file is essentially your local version control file, where local means located on your computer (as opposed to 'the cloud' or some other server such as Google Drive). Keep in mind that the .git file will keep track of modifications to any files and folders within and under the current directory.

'touch test.py' creates a new python file. This is an example of a change that would be recognized by the git file; however, the change would not be staged. In other words, git recognizes that a change has occurred in the directory, but has not recorded it. To officially record changes to the git folder, you need to explicitly tell it to do so.

'git add' stages these modifications. The 'git commit' command officially tells the git file to record these changes. This commit becomes the latest version of the directory. Conceptually, it's a very important step. By itself, your computer has no idea which changes are and aren't important . A commit is essentially your stamp of approval to save the changes that you deem important. Later on, you'll find that it's really useful to look back on previous commits of your project, and in case something lethal happens to your project, you can revert to previous commits.

Up until this point, we've only been using git on a local level. The last two lines involve working with Github, which allows you to send your local files to a remote server stored by Github. Every repository on Github has an associated URL that follows the format above. 'git remote add' associates a keyword, in this case, 'origin', with a destination URL, 'https://github.com/(username)/(repository name).git'.

## Basic Commands
In these following sections, we'll take a deeper look at the basic commands and their various options.
#### git add
```unix
```
#### git commit
```unix
```
#### git remote
```unix
```
#### miscellaneous
```unix
git config
git log
```
