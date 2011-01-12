showall:
	ruby showall.rb 100 10000 20 2000 > showall.dat
	gnuplot -e 'set term png; set xrange [100:1500]; plot "showall.dat" with impulses' > showall.png
#	gnuplot -e 'set xrange [100:1500]; plot "showall.dat" with impulses'
showall2:
	ruby showall2.rb 100 5000 10 1000 > showall2.dat
	gnuplot -e 'set term png; set xrange [100:400]; plot "showall2.dat" with impulses' > showall2.png
#	gnuplot -e 'set xrange [100:400]; plot "showall2.dat" with impulses'

randcoord:
	ruby randcoord.rb > randcoord.dat
	gnuplot -e 'set term png; set xrange [0:300]; set yrange [0:300]; plot "randcoord.dat" with point' > randcoord.png

badrandcoord:
	cc badrand.c
	./a.out | head -300 > badrandcoord.dat
	gnuplot -e 'set term png; set xrange [0:300]; set yrange [0:300]; plot "badrandcoord.dat" with point' > badrandcoord.png

