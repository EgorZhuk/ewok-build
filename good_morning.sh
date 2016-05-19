#!/bin/sh
alldirs=('/c/code/pentaho-reporting' '/c/code/pentaho-platform-plugin-reporting' '/c/code/pentaho-platform-plugin-interactive-reporting')

for dir in ${alldirs[@]}; do
    cd ${dir}
    echo ${dir}
	git fetch origin && git fetch upstream	
	git checkout . && git checkout master && git pull origin master && git merge upstream/master && git push origin master 
done
exit 0

