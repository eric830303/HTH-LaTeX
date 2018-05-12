#set title "Lifetime Distribution of Monte-Carlo Instances of Attacked Designs"
set xlabel "Years" 		font "Times_New_Roman,20 "
set ylabel "Instances Count" 	font "Times_New_Roman,20 "
set terminal png 		font "Times_New_Roman,20 "
set output "s384173y.png"
set xtics offset -1 		font "Times_New_Roman,16"
set ytics 			font "Times_New_Roman,16 "
set key left 


##------ Desired LT Interval -------------------------------------------------------
set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 2.7,300 to 2.7,330 nohead filled lw 3
set arrow 3 from 3.3,300 to 3.3,330 nohead filled lw 3
set arrow 4 from 2.75,310 to 3.25,310 lw 3
set arrow 5 from 3.25,310 to 2.75,310 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 3,330 center font "Times_New_Roman,22"
set grid 


##------ DCC Count ----------------------------------------------------------------
set label "DCC count: 12" at 4.5,310 center font "Times_New_Roman,22"


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
"15mV.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 1 title "15 mV", \
"20mV.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "20 mV", \
"25mV.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 3 title "25 mV", \

#"s38417_3_15mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 1 title "15 mV", \
#"s38417_3_15mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 1 notitle , \
#"s38417_3_20mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "20 mV", \
#"s38417_3_20mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
#"s38417_3_25mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 3 title "25 mV", \
#"s38417_3_25mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 3 notitle, \
