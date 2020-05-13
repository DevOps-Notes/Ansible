# Distribute file
ansible all -m copy -a "src=/tmp/test/test1.txt dest=/usr/local/src/"
# Distribute all files in folder
ansible all -m copy -a "src=/tmp/test/          dest=/usr/local/src/"
# Distribute folder
ansible all -m copy -a "src=/tmp/test           dest=/usr/local/src/"