set logscale xy
set pointsize 1
#set title "Wiki Access Interval"
set terminal aqua 0 fname 'Helvetica' fsize 24
plot "wikiaccessinterval.txt" using ($0+1):($1) title "Wiki Access Interval" with points 1 5
