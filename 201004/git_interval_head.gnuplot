set logscale y
# set pointsize 1
set pointsize 1
set terminal aqua 0 fname 'Helvetica' fsize 24
#set term png monochrome medium
#set output "git_interval_head.png"
plot "git_interval_head.txt" using ($0+1):($1/86400) title "Git Access Interval" with points 1 5
