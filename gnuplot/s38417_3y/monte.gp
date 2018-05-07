#set title "Lifetime Distribution of Monte-Carlo Instances of Attacked Designs"
set xlabel "Years"
set ylabel "Instances Count"
set terminal png font " Times_New_Roman,12 "
set output "s384173y.png"
set xtics 1 ,1 ,12
set key left 

set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 2.7,0 to 2.7,350 nohead filled lw 3
set arrow 3 from 3.3,0 to 3.3, 350 nohead filled lw 3
set arrow 4 from 2.9,250 to 3.1,250 lw 3
set arrow 5 from 3.1,250 to 2.9,250 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 3,270 center font "Times_New_Roman,18"
set grid 

plot \
"15mV.txt" using 1:2 with linespoints linewidth 2 pt 1 ps 2 lc 1 title "15 mV", \
"20mV.txt" using 1:2 with linespoints linewidth 2 pt 2 ps 2 lc 2 title "20 mV", \
"25mV.txt" using 1:2 with linespoints linewidth 2 pt 3 ps 2 lc 3 title "25 mV", \
#"30mV.txt" using 1:2 with linespoints linewidth 2 pt 4 ps 2 lc 4 title "30 mV", \
