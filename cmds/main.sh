#!/bin/bash
for input in ./input/*.json; do	
    filename=$(basename $input '.json')
    output="./output/$filename.html"
	rm -rf $output
	pwd
	touch $output
	ls
	echo "process"
	./cmds/transform.sh $input $output
done
