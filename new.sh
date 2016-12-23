git clone -b manyuser https://github.com/breakwa11/shadowsocks.git
mkdir /root/kcptun
cd /root/kcptun
wget https://github.com/xtaci/kcptun/releases/download/v20161222/kcptun-linux-amd64-20161222.tar.gz
tar -zxf kcptun-linux-amd64-20161222.tar.gz
cd /root
./kcptun/server_linux_386 -l :554 -t 127.0.0.1:443 -key test -mtu 1428 -sndwnd 2048 -rcvwnd 2048 -mode manual -nodelay 0 -resend 1 -nc 1 -interval 5 -datashard 32 -parityshard 8 -nocomp > kcptun.log 2>&1 &
python ./shadowsocks/shadowsocks/server.py --fast-open -p 443 -k xFEas4Yn5dLk -m aes-256-cfb -o tls1.0_session_auth -P auth_sha1 -d start