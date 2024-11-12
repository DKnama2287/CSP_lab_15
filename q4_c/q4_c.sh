#!/bin/bash

input_file="../heart.csv"

output_data="data.dat"

echo "# Age Cholesterol" > "$output_data"

awk -F, 'NR > 1 { if ($14 == 0) print $1, $5 }' "$input_file" >> "$output_data"

echo "Data for Age and Cholesterol (non-heart disease cases) extracted to $output_data"

