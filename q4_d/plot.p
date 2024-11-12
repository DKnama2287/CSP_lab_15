set terminal png 
set output 'graph4d.png'
set title 'the percentage of age group that have heart disease'
set key out top box
set style fill solid
set xrange [-1:1]
set yrange [-1:1]

age4050 = 54.0
age5060 = 71.0
age6070 = 34.0
age7080 = 6.0
age8090 = 0.0
age90100 = 0.0

totalunits = age4050 + age5060 + age6070 + age7080 + age8090 + age90100

a1 = (age4050/totalunits)*360
a2 = a1 + (age5060/totalunits)*360
a3 = a2 + (age6070/totalunits)*360
a4 = a3 + (age7080/totalunits)*360
a5 = a4 + (age8090/totalunits)*360
a6 = a5 + (age90100/totalunits)*360

c1 = (age4050/totalunits)*100
c2 = (age5060/totalunits)*100
c3 = (age6070/totalunits)*100
c4 = (age7080/totalunits)*100
c5 = (age8090/totalunits)*100
c6 = (age90100/totalunits)*100

set angles degree
set size square 

set obj 1 circle at 0,0 size 1 arc [0:a1] fc "red"
set obj 2 circle at 0,0 size 1 arc [a1:a2] fc "blue"
set obj 3 circle at 0,0 size 1 arc [a2:a3] fc "grey"
set obj 4 circle at 0,0 size 1 arc [a3:a4] fc "green"
set obj 5 circle at 0,0 size 1 arc [a4:a5] fc "orange"
set obj 6 circle at 0,0 size 1 arc [a5:a6] fc "pink"

plot NaN title sprintf("age4050 (%.2f%%)", c1) with lines lc "red", \
	NaN title sprintf("age5060 (%.2f%%)", c2) with lines lc "blue", \
	NaN title sprintf("age6070 (%.2f%%)", c3) with lines lc "grey", \
	NaN title sprintf("age7080 (%.2f%%)", c4) with lines lc "green", \
	NaN title sprintf("age8090 (%.2f%%)", c5) with lines lc "orange", \
	NaN title sprintf("age90100 (%.2f%%)", c6) with lines lc "pink"


