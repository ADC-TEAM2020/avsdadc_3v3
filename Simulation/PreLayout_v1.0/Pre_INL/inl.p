# Script for INL (0-1023)

set autoscale
unset log
unset label
unset key
set xrange [0:1024]
set yrange [-67:30]
set datafile separator comma
set title "INL Error"
set xlabel "Digital Output Codes"
set ylabel "INL Error (LSB)" 
plot "inl.dat" linetype 1 linecolor -1 linewidth 4 with linespoints 



