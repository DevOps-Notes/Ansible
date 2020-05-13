# Compose playbook
---
- hosts: all
  gather_facts: True

  tasks:
  - name:     Distribute nginx.conf
    template: src=/tmp/nginx.j2 dest=/usr/local/nginx/conf/nginx.conf
    notify:   - Reload nginx

  handlers:
  - name:  Reload nginx
    shell: /usr/local/nginx/sbin/nginx -s reload

# Compose Jinja2 template
# ...
worker_processes {{ ansible_processor_count }};
# ...