#!/bin/bash

# Check if an argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_file.csv>"
    exit 1
fi

# The input CSV file
input_file="$1"

# Number of lines per chunk file (excluding header)
lines_per_chunk=10000

# Extract the header
echo "Extracting header from $input_file..."
header=$(head -n 1 $input_file)

# Get the base name of the input file (without extension)
base_name=$(basename "$input_file" .csv)

# Split the file into chunks, skipping the header line
echo "Splitting $input_file into chunks of $lines_per_chunk lines each (excluding header)..."
tail -n +2 $input_file | split -l $lines_per_chunk - chunk_

# Add the header to each chunk and rename the files
echo "Adding header to each chunk and renaming files..."
for file in chunk_*
do
    echo "Processing chunk file $file..."
    echo "$header" > tmp_file
    cat $file >> tmp_file
    suffix=$(echo $file | sed 's/chunk_//')
    new_file="${base_name}_${suffix}.csv"
    mv tmp_file "$new_file"
    rm $file
    echo "Created $new_file"
done

echo "Done. All chunks have been processed and renamed."
