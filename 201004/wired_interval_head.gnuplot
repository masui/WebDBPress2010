set logscale y
set pointsize 1
#set title "Wired Access Interval"
set terminal aqua 0 fname 'Helvetica' fsize 24
plot "wired_interval_head.txt" using ($0+1):($1/86400) title "Wired Access Interval" with points 1 5
