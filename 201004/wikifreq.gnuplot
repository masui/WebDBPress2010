set logscale xy
set pointsize 1
set terminal aqua 0 fname 'Helvetica' fsize 24
#set terminal png font 'Helvetica'
plot "wikifreq.txt" using ($0+1):($1) title "Wiki Freq" with points 1 5
