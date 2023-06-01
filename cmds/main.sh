#!/bin/bash
for input in ./input/*.json; do	
    filename=$(basename $input '.json')
    output="./output/$filename.html"
	./cmds/transform.sh $input $output
done
