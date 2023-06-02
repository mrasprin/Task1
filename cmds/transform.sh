#!/bin/bash

input="$1"
output="$2"


echo "<!DOCTYPE html><html><head></head><body><table>" > $output
for row in $(cat $input | jq -c '.[]'); do
   name=$(echo $row | jq -r '.name')
   age=$(echo $row | jq -r '.age')
   echo "<tr><td><h1>$name</h1></td> <td> <h2>$age</h2></td></tr>" >> $output
done

echo "</table></body></html>" >> $output
