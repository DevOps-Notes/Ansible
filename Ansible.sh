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
# install dependencies
yum -y install gcc gcc-c++ ncurses ncurses-devel zlib zlib-devel openssl openssl-devel
