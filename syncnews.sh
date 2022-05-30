#!/bin/bash
cd "$(dirname "$0")"
set -x
git fetch upstream
git checkout master
git merge upstream/master
git push origin master
