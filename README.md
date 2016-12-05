# SourceTree-GitLab-scripts
A few bash scripts to use SourceTree custom actions to open files and commits in GitLab.  These were written for MacOS but might work on a Windows system with Unix tools installed.

You will need to make the scripts executable by SourceTree.  For instance:
```
chmod 755 OpenFileInGitLab.sh
chmod 755 OpenCommitInGitLab.sh
```

To configure SourceTree to use these scripts, within SourceTree choose Preferences... then click the Custom Actions tab.  

For each of the scripts:
1. Click the Add button.

2. In the dialog that appears click the ... button to tell SourceTree the location of the script, and enter a name.

3. For the OpenCommitInGitLab.sh script enter `$REPO $SHA` in the Parameters field.  For the OpenFileInGitLab.sh script enter `$REPO $FILE $SHA` in the Parameters field.

That's it.  Now you should see the name you chose for each script when you right-click a commit or file.



