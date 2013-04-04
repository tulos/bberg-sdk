#!/bin/bash

echo "Unzipping jars in bberg-sdk-jars/..."
cd bberg-sdk-jars/
for x in *.jar; do
    unzip $x;
done
cd ..
rm -rf bberg-sdk-jars/META-INF/

echo "Creating uberjar"
lein uberjar

echo "Creating pom.xml"
lein pom

file=`ls target/bberg-sdk-*-standalone.jar`

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
