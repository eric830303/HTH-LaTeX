#set title "Lifetime Distribution of Monte-Carlo Instances of Attacked Designs"
set xlabel "Years"		font "Times_New_Roman,20 "
set ylabel "Instances Count"	font "Times_New_Roman,20 "
set terminal png		font "Times_New_Roman,20 "
set output "3mp4y.png"
set xtics offset -1 		font "Times_New_Roman,16"
set ytics 			font "Times_New_Roman,16 "
set key left 


##------ Desired LT Interval -------------------------------------------------------
set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 3.6,150 to 3.6,170 nohead filled lw 3
set arrow 3 from 4.4,150 to 4.4,170 nohead filled lw 3
set arrow 4 from 3.65,160 to 4.36,160 lw 3
set arrow 5 from 4.36,160 to 3.65,160 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 4.1,170 center font "Times_New_Roman,22"
set grid 

##------ DCC Count ----------------------------------------------------------------
set label "DCC count: 2" at 5.5,160 center font "Times_New_Roman,22"


plot \
"15mV.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 1 title "10 mV", \
"15mV.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 1 notitle , \
"20mV.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "15 mV", \
"20mV.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
"25mV.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 3 title "20 mV", \
"25mV.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 3 notitle, \

#"3mp_3_15mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 1 title "15 mV", \
#"3mp_3_15mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 1 notitle , \
#"3mp_3_20mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "20 mV", \
#"3mp_3_20mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
#"3mp_3_25mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 3 title "25 mV", \
#"3mp_3_25mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 3 notitle, \

