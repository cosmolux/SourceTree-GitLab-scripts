#!/bin/bash
# This script is designed to be called as a SourceTree Custom Action
# Right-click in SourceTree to view the selected commit in GitLab
REPO_DIR=$1
FILE=$2

cd $REPO_DIR
GITLAB_URL=`git remote get-url origin | sed -e 's/git@//' -e 's/:/\//' -e 's/\.git//'`
# http://stackoverflow.com/questions/6245570/how-to-get-the-current-branch-name-in-git
BRANCH=`git rev-parse --abbrev-ref HEAD`
open "https://$GITLAB_URL/blob/$BRANCH/$FILE"
