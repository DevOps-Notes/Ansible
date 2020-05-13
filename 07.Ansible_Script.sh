# Compose script
vim /usr/local/src/script
#!/bin/sh
yum -y install make gcc gcc-c++ pcre pcre-devel zlib zlib-devel openssl openssl-devel
cd /usr/local/src
wget 'http://nginx.org/download/nginx-1.12.2.tar.gz'
tar -zxf nginx-1.12.2.tar.gz
cd nginx-1.12.2
./configure --prefix=/usr/local/nginx --with-stream --with-http_ssl_module --with-stream_ssl_module
make
make install
exit 0

# Remote-run script
chmod a+x /usr/local/src/script
ansible all -m script -a "/usr/local/src/script"