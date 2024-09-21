#!/bin/bash

clear
wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzvf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/' lab3-bundle.tsv
tr '\t' ',' < file.tsv > lab3-bundle.csv

# starts reading from second line of the file
remaining_lines=$(tail -n +2 lab3-bundle.csv | wc -l)
echo $remaining_lines

tar -czvf lab3-bundle.csv.tar.gz converted-archive.tar.gz
