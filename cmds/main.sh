#!/bin/bash
for input in ./input/*.json; do	
    filename=$(basename $input '.json')
    output="./output/$filename.html"
	pwd
	touch $output
	ls
	echo "process"
	./cmds/transform.sh $input $output
done
