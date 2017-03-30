latest=$(grep "Build [0-9]\{3\}" 1.txt -m 1 | sed 's/\(^.*Build\ \)\([0-9]\{3\}\).*$/\2/') 
echo The latest QAT is 7.1-QAT-$latest
echo Updating the properties
sed -i -e "s/latest=[0-9]\{3\}/latest=$latest/g" build.properties
sed -i -e "s/pentaho-server-ee-7.1-QAT-[0-9]\{3\}.zip/pentaho-server-ee-7.1-QAT-$latest.zip/g" build.properties