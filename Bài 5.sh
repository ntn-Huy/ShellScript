# Tinh tong cac so le tu 1 den n

echo "=== Chuong trinh tinh tong  so le tu 1 den n ==="
echo "Nhap so n:"
read n
sum=0
for ((i=1;i<=n;i+=2));do
	((sum += i))
done
echo "Tong so le tu 1 den $n = $sum"

exit 0
