# Manage server with password
yum -y install sshpass
vim /etc/ansible/hosts
[ServerGroup]
ServerName ansible_ssh_port=22 ansible_ssh_host=ServerIP ansible_ssh_pass='******'
# Manage server with ssh-key
[ServerGroup]
ServerName ansible_ssh_port=22 ansible_ssh_host=ServerIP
# or
[ServerGroup]
ServerIP

# Test hosts
ansible all                                         -m ping
ansible ServerName                                  -m ping
ansible ServerGroup                                 -m ping
ansible -i /etc/ansible/hosts all:\!139.217.114.185 -m ping