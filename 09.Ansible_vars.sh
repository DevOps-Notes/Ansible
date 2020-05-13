---
- hosts: all

  vars:
  - MyName: "Warren Luo"
    MyAge:  "3"

  tasks:
  - name:  Use vars
    shell: echo "MyName is {{ MyName }}, MyAge is {{ MyAge }}"
    register: vars_result
  - debug: var=vars_result