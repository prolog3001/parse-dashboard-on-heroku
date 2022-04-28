#!/bin/bash
# sh /Volumes/PrologMacExternal/GitProjects/General/DashBoard_GitDeskTop/parse-dashboard-on-heroku/00_DASHBOARD_v4.sh

cd "/Volumes/PrologMacExternal/GitProjects/General/DashBoard_GitDeskTop/parse-dashboard-on-heroku"
git checkout master
git pull

# make a git push to update git before server
git add -A .
git commit -m 'Updated DashBoard before CLI deployment'
git push origin master


# Option 1: update dashboard manually by GIT deploy
cd "/Volumes/PrologMacExternal/GitProjects/General/DashBoard_GitDeskTop/parse-dashboard-on-heroku"
heroku login
heroku update
heroku git:remote -a dreamdiner-dashboard-new
git remote -v
git push https://git.heroku.com/dreamdiner-dashboard-new.git master

# Option 2: update server automatically by GIT push
# cd "/Volumes/PrologMacExternal/GitProjects/General/DashBoard_GitDeskTop/parse-dashboard-on-heroku"
# git add -A .
# git commit -m 'Updated DASHBOARD by CLI'
# git push origin master

afplay /System/Library/Sounds/Hero.aiff
afplay /System/Library/Sounds/Hero.aiff
afplay /System/Library/Sounds/Hero.aiff
