#Viết đoạn Script lưu trữ thời điểm đăng nhập Linux hàng ngày và lưu lịch sử vào
#file txt với format sau:
#Giờ-Phút-Giây-Ngày-Tháng-Năm-Tên User 

#Dinh dang thoi gian
time=$(date +"%H-%M-%S-%d-%m-%Y")
echo "Dang tao file history.txt ...."
log="$HOME/history.txt"
user=$USER
echo 'echo "$(date +"%H-%M-%S-%d-%m-%Y")-$USER" >> "$HOME/history.txt"' >> ~/.bashrc
echo "DONE!"
exit 0
