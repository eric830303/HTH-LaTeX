#set title "Lifetime Distribution of Monte-CarloI Instances of Attacked Designs"
set xlabel "Years"		font "Times_New_Roman,20 "
set ylabel "Instances Count"	font "Times_New_Roman,20 "
set terminal png 		font "Times_New_Roman,20 " 
set output "s384175y.png"
set xtics offset -1 		font "Times_New_Roman,16"
set ytics 			font "Times_New_Roman,16 "
set key left 


##------ Desired LT Interval -------------------------------------------------------
set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 4.5,260 to 4.5,300 nohead filled lw 3
set arrow 3 from 5.5,260 to 5.5,300 nohead filled lw 3
set arrow 4 from 4.6,280 to 5.4,280 lw 3
set arrow 5 from 5.4,280 to 4.6,280 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 5,300 center font "Times_New_Roman,22"
set grid 
 

##------ DCC Count ----------------------------------------------------------------
set label "DCC count: 16" at 6.5,310 center font "Times_New_Roman,22"


##------ PLOT --------------------------------------------------------------------
plot \
"s38417_5_10mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 1 title "10 mV", \
"s38417_5_10mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 1 notitle , \
"s38417_5_15mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "15 mV", \
"s38417_5_15mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
"s38417_5_20mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 3 title "20 mV", \
"s38417_5_20mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 3 notitle, \
#The title is not correct but accpeted
