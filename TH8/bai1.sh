#Em hay viết code C cơ bản in ra dòng chữ “Hello World!” và lưu vào file hello.c. Sau đó hãy viết đoạn Shell Scrip để biên dịch và chạy đoạn code C này. 

cd ~/Documents
cat > hello.c << "EOF"
#include <stdio.h>
int main(){
printf("Hello world");
return 0;
}
EOF
#Trinh bien dich
gcc -o hello hello.c
# Chay code
./hello

