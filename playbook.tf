---
- name: Install ngins & git
  hosts: web
  gather_facts: true
  become: true
  
  - tasks:
    - name: Update apt and nginx
      apt: 
        name: nginx
        update-cache: true
        
    - name: Install Git
      apt: 
        name: git
        update-cache:true
