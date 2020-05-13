# Compose playbook
vim /usr/local/src/test.yml
---
- hosts: all
  gather_facts: True

  vars:
  - MyName:   "Warren Luo"

  tasks:
  - name:     Test template
    template: src=/tmp/test.j2 dest=/root/test.conf

  - shell:    cat /root/test.conf
    register: conf_content

  - debug:    var=conf_content

# Compose Jinja2 template
vim /tmp/test.j2
My name is {{ MyName }}