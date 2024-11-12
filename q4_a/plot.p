set terminal png
set output 'q4_a.png'

set title "Gender vs Heart disease people"
set xlabel "Gender"
set ylabel "Heart disease people"

set style data histogram
set key out box
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.8

plot "data.dat" using 2:xtic(1) title "Heart Disease Count"

