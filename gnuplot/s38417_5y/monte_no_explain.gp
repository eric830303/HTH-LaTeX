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
set termoption dashed

##------ Right Arrow -------------------------------------------------------
#X=5.64
#Y=100
#set arrow 6 from 3,Y to 6.1,Y lw 1 
#set arrow 7 from X,0   to   X,180 head nofilled lw 1
#set label "100 instances" at 6.11,90 font "Times_New_Roman,19"
#set label "5.64 yr" at 5.55,185 font "Times_New_Roman,19"
#set arrow 8 from X,Y   to   6.1,150 head nofilled lw 2
#set label "There exist 100" at 6.1,250 font "Times_New_Roman,19"
#set label "instances whose" at 6.1,220 font "Times_New_Roman,19"
#set label "upper bounds" at 6.1,190 font "Times_New_Roman,19"
#set label "of lifetime" at 6.1,160 font "Times_New_Roman,19"
#set label "are 5.64 yr" at 6.1,130 font "Times_New_Roman,19"
#set object Y circle at 5.64,100 size scr 0.007 fc rgb "navy" lw 1



##------ Left  Arrow -------------------------------------------------------
#X2=4.34
#set arrow 9 from X2,0   to   X2,180 head nofilled lw 1
#set label "4.34 yr" at 4.03,185 font "Times_New_Roman,19"
#set arrow 10 from X2,Y   to   3.9,180 head nofilled lw 2
#set label "There exist 100" at 3.1,250 font "Times_New_Roman,19"
#set label "instances whose" at 3.1,220 font "Times_New_Roman,19"
#set label "upper bounds" at 3.1,190 font "Times_New_Roman,19"
#set label "of lifetime" at 3.1,160 font "Times_New_Roman,19"
#set label "are 4.34 yr" at 3.1,130 font "Times_New_Roman,19"
#set object X circle at 4.34,100 size scr 0.006 fc rgb "navy" lw 1


##------ DCC Count ----------------------------------------------------------------
set label "DCC count: 16" at 6.5,310 center font "Times_New_Roman,22"


##------ PLOT --------------------------------------------------------------------
plot \
"s38417_5_10mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 5 ps 2 lc 7 title "10 mV", \
"s38417_5_10mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 5 ps 2 lc 7 notitle , \
"s38417_5_15mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 6 ps 2 lc 2 title "15 mV", \
"s38417_5_15mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 6 ps 2 lc 2 notitle, \
"s38417_5_20mV_dist.txt" using 1:2 with linespoints linewidth 2 pt 7 ps 2 lc 6 title "20 mV", \
"s38417_5_20mV_dist.txt" using 1:3 with linespoints linewidth 2 pt 7 ps 2 lc 6 notitle, \
#The title is not correct but accpeted
