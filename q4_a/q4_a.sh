#!/bin/bash

input_file="../heart.csv"

output_data="data.dat"

echo "# Gender HeartDisease Count" > "$output_data"

awk -F, '
    NR > 1 {  # Skip header
        gender = $2
        heart_disease = $14
        if (heart_disease == 1) {
            if (gender == 1) male++
            else if (gender == 0) female++
        }
    }
    END {
        print "Male", male
        print "Female", female
    }
' "$input_file" >> "$output_data"

echo "Data extracted to $output_data"

