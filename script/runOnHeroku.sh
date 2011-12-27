#!/bin/bash
dir=`pwd`
if [ -r "runOnHeroku.sh" ]; then
	cd ..
fi
#bundle exec rake assets:precompile
git add .
git commit -m "autoPush to heroku"
git push heroku master
