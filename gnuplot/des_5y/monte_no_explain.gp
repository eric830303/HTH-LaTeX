#set title "Lifetime Distribution of Monte-Carlo Instances of Attacked Designs"
set xlabel "Years"			font "Times_New_Roman,20 "
set ylabel "Instances Count"		font "Times_New_Roman,20 "
set terminal png			font "Times_New_Roman,20 "
set output "des5y.png"
set xtics offset -1 		font "Times_New_Roman,16"
set ytics 			font "Times_New_Roman,16 "
set key left 



##------ Desired LT Interval -------------------------------------------------------
set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 4.5,330 to 4.5,380 nohead filled lw 3
set arrow 3 from 5.5,330 to 5.5,380 nohead filled lw 3
set arrow 4 from 4.6,340 to 5.4,340 lw 3
set arrow 5 from 5.4,340 to 4.6,340 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 5,360 center font "Times_New_Roman,22"
set grid 


##------ DCC Count ----------------------------------------------------------------
set label "DCC count: 2" at 6.5,355 center font "Times_New_Roman,22"

##------ PLOT --------------------------------------------------------------------
plot \
"shifted_des_5_10mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 7 title "10 mV", \
"shifted_des_5_10mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 7 notitle , \
"shifted_des_5_15mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "15 mV", \
"shifted_des_5_15mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
"shifted_des_5_20mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 6 title "20 mV", \
"shifted_des_5_20mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 6 notitle, \
