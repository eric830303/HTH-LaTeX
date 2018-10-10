#set title "Lifetime Distribution of Monte-Carlo Instances of Attacked Designs"
set xlabel "Years"			font "Times_New_Roman,20 "
set ylabel "Instances Count"		font "Times_New_Roman,20 "
set terminal png			font "Times_New_Roman,20 "
set output "des3y.png"
set xtics offset -1 		font "Times_New_Roman,16"
set ytics 			font "Times_New_Roman,16 "
set key left 



##------ Desired LT Interval -------------------------------------------------------
set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 2.7,350 to 2.7,400 nohead filled lw 3
set arrow 3 from 3.3,350 to 3.3,400 nohead filled lw 3
set arrow 4 from 2.75,360 to 3.25,360 lw 3
set arrow 5 from 3.25,360 to 2.75,360 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 3,380 center font "Times_New_Roman,22"
set grid 


##------ DCC Count ----------------------------------------------------------------
set label "DCC count: 5" at 4.5,395 center font "Times_New_Roman,22"


##------ PLOT --------------------------------------------------------------------
plot \
"15mV.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 7 title "10 mV", \
"20mV.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "15 mV", \
"25mV.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 6 title "20 mV", \


#"des_3_15mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 7 title "15 mV", \
#"des_3_15mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 7 notitle , \
#"des_3_20mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "20 mV", \
#"des_3_20mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
#"des_3_25mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 6 title "25 mV", \
#"des_3_25mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 6 notitle, \
