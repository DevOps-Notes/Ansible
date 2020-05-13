ansible all -m command -a "pwd"
ansible all -m shell   -a "df -h | grep sda1"
ansible all -m raw     -a "yum -y install lrzsz"