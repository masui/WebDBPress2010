set logscale y
set pointsize 1
#set terminal aqua 0 fname 'Helvetica' fsize 24
set terminal postscript eps
set output "todo_interval_head.eps"
plot "todo_interval_head.txt" using ($0+1):($1/86400) title "TODO Access Interval" with points 1 5
