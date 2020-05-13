# Create link
ln -s /usr/local/python/bin/ansible-playbook /usr/local/bin/

# Compose playbook
vim /usr/local/src/test.yaml
---
- hosts: all
  tasks:
  - name:  1.Copy  nginx.conf
    copy:  src=/tmp/nginx.conf dest=/usr/local/nginx/conf/

  - name:  2.Check nginx.conf
    shell: /usr/local/nginx/sbin/nginx -t
    register: nginx_result

  - debug: var=nginx_result

# Run playbook
ansible-playbook /usr/local/src/test.yaml