#!/bin/bash

input_file="../heart.csv"

output_data="data.dat"

echo "# AgeGroup Count" > "$output_data"

awk -F, 'NR > 1 && $14 == 1 { 
    age = $1
    if (age >= 40 && age < 50) age_group="40-50"
    else if (age >= 50 && age < 60) age_group="50-60"
    else if (age >= 60 && age < 70) age_group="60-70"
    else if (age >= 70 && age < 80) age_group="70-80"
    else if (age >= 80 && age < 90) age_group="80-90"
    else if (age >= 90 && age <= 100) age_group="90-100"
    if (age_group) counts[age_group]++
} 
END { 
    for (group in counts) print group, counts[group] 
}' "$input_file" >> "$output_data"

echo "Data for Age Groups with Heart Disease extracted to $output_data"

