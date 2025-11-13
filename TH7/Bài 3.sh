#Giai phuong trinh bac nhat

echo "=== Giai Phuong Trinh Bac Nhat ax+b=0  ==="
echo "Nhap a,b"
read a
read b
echo " $a x + $b = 0"

if [ $a -eq 0 ]; then
	if [ $b -eq 0 ]; then
	echo "Phuong trinh co vo so nghiem"
	exit 0
	else
	echo "Phuong trinh vo nghiem"
	exit 0
	fi
fi

x=$(echo "scale=2; -$b / $a" | bc -l)
echo "x=$x"

exit 0


