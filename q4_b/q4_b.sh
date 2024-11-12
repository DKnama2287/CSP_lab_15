#!/bin/bash

input_file="../heart.csv"

output_data="data.dat"

echo "# Age BloodPressure" > "$output_data"

awk -F, 'NR > 1 { print $1, $4 }' "$input_file" >> "$output_data"

echo "Data for Age and Blood Pressure extracted to $output_data"

