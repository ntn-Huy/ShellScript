#Phuong trinh bac 2

echo "=== Giai phuong trinh bac 2: ax^2+bx+c=0 ==="
echo "Nhap a,b,c:"
read a b c

if [ $(echo "$a ==0" |  bc -l) -eq 1 ]; then
	if [ $b -eq 0 ];then
		if [$( echo "$c ==0" | bc -l) -eq 1 ]; then
			echo "Phuong trinh co vo so nghiem"
			exit 0
		else	
			echo"Phuong trinh vo nghiem"
			exit 0
		fi
	else
		x=$(echo "scale=2; -$c / $b" | bc -l)
		echo "Phuong trinh co 1 nghiem: x= $x"
		exit 0
	fi
fi


delta=$(echo "($b)^2 - 4*$a*$c" | bc -l)

if [ $(echo "$delta == 0" | bc -l) -eq 1 ];then
	x=$(echo "scale=2; -$b / (2*$a)" | bc -l)
	echo "Phuong trinh co nghiem kep: x=$x"
	exit 0
elif [ $(echo "$delta <  0" | bc -l) -eq 1  ]; then
	echo "Phuong trinh vo nghiem"
	exit 0
else	
	x1=$(echo "scale=2;((-$b)+sqrt($delta)) / (2*$a)" | bc -l)
	x2=$(echo "scale=2;((-$b)-sqrt($delta)) / (2*$a)" | bc -l)
	echo "Phuong trinh co 2 nghiem phan biet"
	echo "x1=$x1	x2=$x2"
fi
exit 0

