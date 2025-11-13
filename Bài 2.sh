#Liet ke cac so nguyen to nho hon n (nhap tu ban phim)
echo "=== Liet ke cac so nguyen to nho hon n ==="
echo "Nhap n:"
read n
declare -a a
count=0

So_nguyen_to()
{
	local num=$1
	if [ $num -le 1 ]; then
		echo 0 # ko phai so nt
		return
	fi

	for ((i=2;i*i <= num;i++));do
		if [ $((num % i)) -eq 0 ]; then
			echo 0  # ko phai so nt
			return
		fi
	done
echo 1 # la so nguyen to
}

for ((i=2;i<n;i++));do
	result=$(So_nguyen_to $i)
	if [ $result -eq 1 ]; then
		a[$count]=$i
		((count++))
	fi
done
#in ra day so nguye to
echo " Day so nguyen to nho hon $n la:"
echo "${a[@]}"

exit 0
