#Viết Chương trình cài đặt thời gian tắt máy hàng ngày vào 23h:30p
# Kiểm tra xem có phải là root không
if [ "$(id -u)" -ne 0 ]; then
  echo "Lỗi: Bạn phải chạy script này với quyền sudo." >&2
  exit 1
fi

echo "Đang cài đặt lịch tự động tắt máy vào 23:30 hàng ngày..."

# Lệnh và lịch
JOB_ENTRY="30 23 * * * /usr/bin/systemctl poweroff"

# Lấy crontab của root (tên người dùng 'root')
CURRENT_CRON=$(crontab -u root -l 2>/dev/null)


# Thêm job mới vào crontab của root
# (Lấy crontab cũ, và thêm dòng mới)
(echo "$CURRENT_CRON"; echo "$JOB_ENTRY") | crontab -u root -
echo "Đã cài đặt thành công lịch tắt máy!"


echo "Hoàn tất."

