# Introduction:
Automates application deployment, intra service orchestration, cloud provisioning.
Ansible is easy to deploy because it does not use any agents.

# Installation(CentOS 7):
# Install net-tools
yum -y install net-tools
# Disable firewalld
systemctl stop firewalld && systemctl disable firewalld
# Disable selinux
setenforce 0 && vim /etc/selinux/config # SELINUX=disabled
# Install dependencies
yum -y install gcc gcc-c++ ncurses ncurses-devel zlib zlib-devel openssl openssl-devel
# Install Python 3.6
cd /usr/local/src/ && wget 'https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz' && tar -zxf Python-3.6.4.tgz
cd Python-3.6.4 && ./configure --prefix=/usr/local/python/ && make && make install
ln -s /usr/local/python/bin/python3 /usr/local/bin/ && python3 --version
/usr/local/python/bin/pip3 install --upgrade pip
# Install ansible
/usr/local/python/bin/pip3 install ansible && ln -s /usr/local/python/bin/ansible /usr/local/bin/ && ansible --version