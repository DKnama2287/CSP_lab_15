set terminal png
set output 'q4_b.png'

set title "Age vs BP"
set xlabel "Age"
set ylabel "Blood Pressure (trestbps)"

set grid
set style data points
set key out box
set pointsize 1.5

plot "data.dat" using 1:2 with points title "Age vs BP"

