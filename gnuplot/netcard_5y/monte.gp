#set title "Lifetime Distribution of Monte-Carlo Instances of Attacked Designs"
set xlabel "Years" 		font "Times_New_Roman,20 "
set ylabel "Instances Count" 	font "Times_New_Roman,20 "
set terminal png 		font "Times_New_Roman,20 "
set output "netcard5y.png"
set xtics offset -1 		font "Times_New_Roman,16"
set ytics 			font "Times_New_Roman,16 "
set key left 


##------ Desired LT Interval -------------------------------------------------------
set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 4.5,280 to 4.5,320 nohead filled lw 3
set arrow 3 from 5.5,280 to 5.5,320 nohead filled lw 3
set arrow 4 from 4.6,300 to 5.4,300 lw 3
set arrow 5 from 5.4,300 to 4.6,300 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 5,310 center font "Times_New_Roman,22"
set grid 


##------ DCC Count ----------------------------------------------------------------
set label "DCC count: 1" at 6.1,310 center font "Times_New_Roman,22"


##------ Dist. Intro. -------------------------------------------------------------
#X1 = 2.6
#Y1 = 170
#X2 = 2.9
#Y2 = 250
#set arrow 6 from X1,Y1 to X2,Y1 nohead lw 3 #Bottom
#set arrow 7 from X1,Y2 to X2,Y2 nohead lw 3 #Upper
#set arrow 8 from X1,Y1 to X1,Y2 nohead lw 3 #Left
#set arrow 9 from X2,Y1 to X2,Y2 nohead lw 3 #Right


##------ PLOT --------------------------------------------------------------------
plot \
"shifted_netcard_5_5mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 1 title "10 mV", \
"shifted_netcard_5_5mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 1 notitle , \
"shifted_netcard_5_10mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "15 mV", \
"shifted_netcard_5_10mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
"shifted_netcard_5_15mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 3 title "20 mV", \
"shifted_netcard_5_15mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 3 notitle, \
#"netcard_4_20mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 8 ps 2 lc 4 title "20 mV", \
#"netcard_4_20mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 8 ps 2 lc 4 notitle, \
