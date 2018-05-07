#set title "Lifetime Distribution of Monte-Carlo Instances of Attacked Designs"
set xlabel "Years"
set ylabel "Instances Count"
set terminal png font " Times_New_Roman,12 "
set output "3mp4y.png"
set xtics 1 ,1 ,12
set key left 

set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 3.6,0 to 3.6,180 nohead filled lw 3
set arrow 3 from 4.4,0 to 4.4,180 nohead filled lw 3
set arrow 4 from 3.7,160 to 4.3,160 lw 3
set arrow 5 from 4.3,160 to 3.7,160 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 4.1,170 center font "Times_New_Roman,18"
set grid 

plot \
"15mV.txt" using 1:2 with linespoints linewidth 2 pt 1 lc 1 title "15 mV", \
"15mV.txt" using 1:3 with linespoints linewidth 2 pt 1 lc 1 notitle , \
"20mV.txt" using 1:2 with linespoints linewidth 2 pt 2 lc 2 title "20 mV", \
"20mV.txt" using 1:3 with linespoints linewidth 2 pt 2 lc 2 notitle, \
"25mV.txt" using 1:2 with linespoints linewidth 2 pt 3 lc 3 title "25 mV", \
"25mV.txt" using 1:3 with linespoints linewidth 2 pt 3 lc 3 notitle, \

