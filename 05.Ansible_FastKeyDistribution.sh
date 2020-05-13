vim /etc/ansible/hosts
[ServerGroup]
ServerName ansible_ssh_port=22 ansible_ssh_host=ServerIP ansible_ssh_pass='******'

# ->

vim /etc/ssh/ssh_config
pubkey=`cat /root/.ssh/id_rsa.pub`
ansible all -m shell -a "cd /root/; umask 077; test -d .ssh || mkdir .ssh ; echo ${pubkey} >> .ssh/authorized_keys"

# ->

[ServerGroup]
ServerName ansible_ssh_port=22 ansible_ssh_host=ServerIP
# or
[ServerGroup]
ServerIP