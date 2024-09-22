#!/bin/bash


# download URL
wget -q https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

# extract the tar.gz file
tar -xzvf lab3-bundle.tar.gz

# remove blank lines from TSV file & save to a new file
awk '!/^[[:space:]]*$/' lab3_data.tsv > "cleaned_lab3-bundle.tsv"

# convert the cleaned TSV file to CSV format
tr '\t' ',' < cleaned_lab3_data.tsv > lab-bundle.csv

# count the number of remaining lines excluding the header
remaining_lines=$(tail -n +2 "lab3-bundle.csv" | wc -l)
echo "Remaining lines: $remaining_lines"

# compress the CSV file into a new tar.gz archive
tar -czvf lab3-bundle.csv.tar.gz lab3-bundle.csv 

# cleanup
rm lab3-bundle.tar.gz cleaned_lab3-bundle.tsv

echo "Output archive: lab3-bundle.csv.tar.gz" 
