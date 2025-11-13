#Tinh giai thua cua 1 so

echo "=== Chuong trinh tinh giai thua cua 1 so ==="
echo "Nhap so can tinh giai thua:"
read n
result=1
for ((i=2;i <= n;i++));do	
	((result *= i ))
done
echo "$n ! = $result"
exit 0
