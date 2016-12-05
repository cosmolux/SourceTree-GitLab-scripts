#!/bin/bash
# This script is designed to be called as a SourceTree Custom Action
# Right-click in SourceTree to view the selected commit in GitLab
REPO_DIR=$1
SHA=$2

cd $REPO_DIR
GITLAB_URL=`git remote get-url origin | sed -e 's/git@//' -e 's/:/\//' -e 's/\.git//'`
open "https://$GITLAB_URL/commit/$SHA"
