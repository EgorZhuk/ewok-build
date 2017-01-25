#!/usr/bin/env bash
alldirs=(
    '/d/code/pentaho-reporting'
    '/d/code/pentaho-platform-plugin-reporting'
    '/d/code/pentaho-platform-plugin-interactive-reporting'
    '/d/code/pentaho-platform'
    '/d/code/pentaho-commons-gwt-modules'
    '/d/code/pentaho-platform-plugin-common-ui'
    '/d/code/pentaho-coding-standards'
    )

for dir in ${alldirs[@]}; do
    cd ${dir}
    echo ${dir}
    current="$(git rev-parse --abbrev-ref HEAD)"
    echo ${current}
	git fetch origin && git fetch upstream	
	git checkout . && git checkout master && git pull origin master && git merge upstream/master && git push origin master
	git checkout ${current}
 
done
exit 0

