f=$1
base=${f%.*}
LANG= xmgrace -hardcopy -hdevice EPS $f -printfile $base.eps
epstopdf $base.eps --outfile=$base.pdf
rm $base.eps
