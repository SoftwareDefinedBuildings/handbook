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

The 'git init' statement creates a new .git file within your current directory. This git file is essentially your local version control file, where local means located on your computer :computer: (as opposed to 'the cloud' :cloud: or some other server such as Google Drive). Keep in mind that the .git file will keep track of modifications to any files and folders within and under the current directory.

'touch test.py' creates a new python file. This is an example of a change that would be recognized by the git file; however, the change would not be staged. In other words, git recognizes that a change has occurred in the directory, but has not recorded it. To officially record changes to the git folder, you need to explicitly tell it to do so.

'git add' stages these modifications. The 'git commit' command officially tells the git file to record these changes. This commit becomes the latest version of the directory. Conceptually, it's a very important step. By itself, your computer has no idea which changes are and aren't important . A commit is essentially your stamp of approval to save the changes that you deem important. Later on, you'll find that it's really useful to look back on previous commits of your project, and in case something lethal happens to your project, you can revert to previous commits.

Up until this point, we've only been using git on a local level. The last two lines involve working with Github, which allows you to send your local files to a remote server stored by Github. Every repository on Github has an associated URL that follows the format above. 'git remote add' associates a keyword, in this case, 'origin', with a destination URL, 'https://github.com/(username)/(repository name).git'.

*Note*: You might notice that although you did a 'git init' command, you don't see a new file appear in your directory, and when you do a regular 'ls' command in terminal, you can't find it. This is because git files are *hidden* files. Don't worry too much about why. Here's a couple ways to 'see' a git, and more generally, hidden files.
1. Terminal: 'ls -a' is a regular 'ls' command with the '-a' option that displays hidden files
2. Windows : https://support.microsoft.com/en-us/help/14201/windows-show-hidden-files
3. Mac :apple:: type 'defaults write com.apple.finder AppleShowAllFiles YES' into terminal, then option key + right click Finder and select relaunch.

#### Recording Changes
```unix
git add -A
git commit -m 'Initial Commit'
git push origin master
```
After you've created a local .git file, this series of commands will dominate your day to day interactions with git. This is essentially the same as the above code segment, except you no longer need to 'git init' because you've already created a .git file, and you don't need to 'git remote add origin' unless the URL of your remote Github repository changed.
