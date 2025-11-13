echo "=== Chuong trinh dem so dong cua mot tap tin ==="

# Nhap tap tin
echo -n "Vui long nhap ten tap tin (hoac duong dan): "
read ten_file

# Kiem tra xem tap tin co ton tai ko
if [ ! -f "$ten_file" ]; then
    echo "Loi: Tap tin '$ten_file' khong ton tai hoac khong phai la tap tin thong thuong."
    exit 1
fi

# Dem so dong
so_dong=$(wc -l "$ten_file" | awk '{print $1}')

echo "Tap tin '$ten_file' co tong cong: $so_dong dong."

exit 0
