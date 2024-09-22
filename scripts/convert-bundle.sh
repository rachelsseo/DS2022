#!/bin/bash

# download URL
wget -q https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

# decompressing the tar ball 
tar -xzvf lab3-bundle.tar.gz

# removing empty rows 
awk '!/^[[:space:]]*$/' lab3_data.tsv > cleaned_lab3_data.tsv

# converting tsv -> csv
tr '\t' ',' < cleaned_lab3_data.tsv > lab_bundle.csv

# lines remaining in code 
remaining_lines=$(tail -n +2 lab-bundle.csv | wc -l)
echo "Remaining lines: $remaining_lines"

#compress csv file into new tar.gz archive
tar -czvf lab3-bundle.csv.tar.gz lab-bundle.csv

#cleanup 
rm lab3-bundle.tar.gz cleaned_lab3_data.tsv

echo "Output archive: lab3-bundle.csv.tar.gz"
