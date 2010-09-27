set logscale y
set pointsize 1
set terminal aqua 0 fname 'Helvetica' fsize 24
plot "masui_interval_head.txt" using ($0+1):($1/86400) title "MasuiIdea Interval" with points 1 5
