# Script for DNL (0-1023)

set autoscale
unset log
unset label
unset key
set xrange [0:1024]
set yrange [-4:8.5]
set datafile separator comma
set title "DNL [Codes:0-1023]"
set xlabel "Digital Output Codes"
set ylabel "DNL Error (LSB)" 
plot "pre_dnl.dat" linetype 1 linecolor -1 linewidth 4 with linespoints 



