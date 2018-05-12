#set title "Lifetime Distribution of Monte-CarloI Instances of Attacked Designs"
set xlabel "Years"		font "Times_New_Roman,20 "
set ylabel "Instances Count"	font "Times_New_Roman,20 "
set terminal png 		font "Times_New_Roman,20 " 
set output "s384175y.png"
set xtics offset -1 		font "Times_New_Roman,16"
set ytics 			font "Times_New_Roman,16 "
set key left 



set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 4.5,200 to 4.5,230 nohead filled lw 3
set arrow 3 from 5.5,200 to 5.5,230 nohead filled lw 3
set arrow 4 from 4.6,210 to 5.4,210 lw 3
set arrow 5 from 5.4,210 to 4.6,210 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 5,220 center font "Times_New_Roman,22"
set grid 
 

plot \
"15mV.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 1 title "15 mV", \
"20mV.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "20 mV", \
"25mV.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 3 title "25 mV", \

#"15mV.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 1 title "15 mV", \
#"15mV.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 1 notitle , \
#"20mV.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "20 mV", \
#"20mV.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
#"25mV.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 3 title "25 mV", \
#"25mV.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 3 notitle, \
