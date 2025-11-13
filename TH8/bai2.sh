# Viết đoạn Script chạy quá trình cài đặt các gói rpm của dịch vụ telnet và sau đó
#cho phép chạy telnet qua các tường lửa. Test kết quả dịch vụ sau đó bởi máy win11. 

if [ "$EUID" -eq 0 ]; then #chi chay khi dang o root
#dowloads goi tu link
wget http://centos-hn.viettelidc.com.vn/6/os/x86_64/Packages/telnet-0.17-48.el6.x86_64.rpm
wget http://centos-hn.viettelidc.com.vn/6/os/x86_64/Packages/telnet-server-0.17-48.el6.x86_64.rpm 
wget http://centos-hn.viettelidc.com.vn/6/os/x86_64/Packages/xinetd-2.3.14-40.el6.x86_64.rpm 
# Cai dat goi
rpm -i telnet-0.17-48.el6.x86_64.rpm
rpm -i telnet-server-0.17-48.el6.x86_64.rpm
rpm -i xinetd-2.3.14-40.el6.x86_64.rpm
cat > /etc/xinetd.d/telnet << "EOF"
service telnet
{
        flags           = REUSE
        socket_type     = stream
        wait            = no
        user            = root
        server          = /usr/sbin/in.telnetd
        log_on_failure  += USERID
        disable         = no
}
EOF
#KHoi dong lai xinetd
service xinetd start
#Tuong lua
firewall-cmd --add-service=telnet --zone=public --permanent
firewall-cmd --reload
echo "Cai dat hoan tat!"
else
echo "Hay vao root de chay code"
fi

