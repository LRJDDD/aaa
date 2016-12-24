cd /root/kcptun
nohup server_linux_386 -l :554 -t 127.0.0.1:443 -key test -mtu 1428 -sndwnd 2048 -rcvwnd 2048 -mode manual -nodelay 0 -resend 1 -nc 1 -interval 5 -datashard 32 -parityshard 8 -nocomp
cd /root
python ./shadowsocks/shadowsocks/server.py --fast-open -p 443 -k xFEas4Yn5dLk -m aes-256-cfb -o tls1.2_ticket_auth -O auth_sha1_v4 -d start