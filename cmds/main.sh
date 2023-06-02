#!/bin/bash
for input in ./input/*.json; do	
    filename=$(basename $input '.json')
    output="../output/$filename.html"
	rm -rf $output
	touch $output
	./cmds/transform.sh $input $output
done
