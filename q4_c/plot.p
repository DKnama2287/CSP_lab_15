set terminal png
set output 'q4_c.png'

set title "Age vs Cholesterol (Non-Heart Disease Cases)"
set xlabel "Age"
set ylabel "Cholesterol"

set grid
set style data linespoints
set key out box
set pointsize 1.5
set linetype 1 lc rgb "blue" 

plot "data.dat" using 1:2 with linespoints title "Age vs Cholesterol"

