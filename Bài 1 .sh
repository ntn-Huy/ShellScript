#!/bin/bash
echo "=== Kiem tra so nguyen to ==="
echo "Nhap so:"
read a
nguyento=1
if [ $a -le 1 ]; then
	nguyento=0
fi

if [ $nguyento -eq 1 ]; then

for (( i=2; i*i <= $a;i++));do
	if [ $((a % i)) -eq 0 ]; then
		nguyento=0
		break
	fi
done
fi

if [ $nguyento -eq 1 ]; then
	echo "$a la so nguyen to"
else
	echo "$a khong phai la so nguyen to"
fi

exit 0


