#!/bin/bash

file=`ls target/bberg-sdk-*-standalone.jar`

rm -rf unpacked-jars/*
echo "Unzipping jars..."
cd input-jars/
for x in *.jar; do
    unzip -o -d ../unpacked-jars $x;
done
cd ..
rm -rf unpacked-jars/META-INF/

echo "Creating uberjar"
lein uberjar

echo "Creating pom.xml"
lein pom

if [[ ! -f ${file} ]]; then
    echo "Error: ${file} doesn't exist!"
    exit 1
fi

echo "Moving ${file} to ${file/-standalone/}."
mv ${file} ${file/-standalone/}
file=${file/-standalone/}

echo "Are you really sure you want to upload ${file} to $1?"
echo "Hit Ctrl-C to abort, or RETURN to upload."
read

lein deploy $1

echo "Finished!"
