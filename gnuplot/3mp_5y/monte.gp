#set title "Lifetime Distribution of Monte-Carlo Instances of Attacked Designs"
set xlabel "Years"
set ylabel "Instances Count"
set terminal png font " Times_New_Roman,12 "
set output "3mp5y.png"
set xtics 1 ,1 ,12
set key left 



set terminal png enhanced
set terminal png size 1080, 480
set arrow 2 from 4.5,0 to 4.5,250 nohead filled lw 3
set arrow 3 from 5.5,0 to 5.5,250 nohead filled lw 3
set arrow 4 from 4.7,200 to 5.3,200 lw 3
set arrow 5 from 5.3,200 to 4.7,200 lw 3
set label "[n-{/Symbol e},n+{/Symbol e}]" at 5,210 center font "Times_New_Roman,18"
set grid 



plot \
"15mV.txt" using 1:2 with linespoints linewidth 2 pt 1 ps 2 lc 1 title "15 mV", \
"20mV.txt" using 1:2 with linespoints linewidth 2 pt 2 ps 2 lc 2 title "20 mV", \
"25mV.txt" using 1:2 with linespoints linewidth 2 pt 3 ps 2 lc 3 title "25 mV", \
#"30mV.txt" using 1:2 with linespoints linewidth 2 title "30 mV", \
