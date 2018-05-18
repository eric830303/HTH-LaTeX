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
set arrow 2 from 2.7,410 to 2.7,450 nohead filled lw 3
set arrow 3 from 3.3,410 to 3.3,450 nohead filled lw 3
set arrow 4 from 2.75,420 to 3.25,420 lw 3
set arrow 5 from 3.25,420 to 2.75,420 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 3,440 center font "Times_New_Roman,22"
set grid 


##------ Box (left) -----------------------------------------------------------------------
set arrow 6 from 2.3,30  to 2.8,30  nohead filled lw 1 #B line
set arrow 7 from 2.3,480 to 2.8,480 nohead filled lw 1 #U line
set arrow 8 from 2.3,30  to 2.3,480 nohead filled lw 1 #L line
set arrow 9 from 2.8,30  to 2.8,480 nohead filled lw 1 #R line
set arrow 10 from 2.3,300  to 2.1,300 head filled lw 2 #R line

##------ Box (right) -----------------------------------------------------------------------
set arrow 11 from 3,30  to 3.5,30  nohead filled lw 1 #B line
set arrow 12 from 3,300 to 3.5,300 nohead filled lw 1 #U line
set arrow 13 from 3,30  to 3,300 nohead filled lw 1 #L line
set arrow 14 from 3.5,30  to 3.5,300 nohead filled lw 1 #R line
set arrow 15 from 3.5,150  to 3.7,180 head filled lw 2 #R line

##------ DCC Count ----------------------------------------------------------------
#(1) DCC Count
set label "DCC count: 12" at 4.5,440 center font "Times_New_Roman,22"
#(2) Left Box
set label "Left peaks:" at 1.05,360 font "Times_New_Roman,20"
set label "The lower-bound " at 1.05,320 font "Times_New_Roman,20"
set label "distributions  " at 1.05,280  font "Times_New_Roman,20"
set label "of lifetime interval" at 1.05,240  font "Times_New_Roman,20"
set label "across all instances" at 1.05,200  font "Times_New_Roman,20"
#(3) Right Box
set label "Right peaks:" at 3.55,360 font "Times_New_Roman,20"
set label "The upper-bound" at 3.55,320  font "Times_New_Roman,20"
set label "distributions" at 3.55,280  font "Times_New_Roman,20"
set label "of lifetime interval" at 3.55,240  font "Times_New_Roman,20"
set label "across all instances" at 3.55,200  font "Times_New_Roman,20"


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
"s38417_3_5mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 1 title "10 mV", \
"s38417_3_5mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 1 notitle, \
"s38417_3_10mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "15 mV", \
"s38417_3_10mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
"s38417_3_15mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 3 title "20 mV", \
"s38417_3_15mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 3 notitle , \
#Title is not correct but accepted
