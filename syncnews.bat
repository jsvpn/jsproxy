CD /D "%~dp0"
git fetch upstream
git checkout master
git merge upstream/master
git push origin master
