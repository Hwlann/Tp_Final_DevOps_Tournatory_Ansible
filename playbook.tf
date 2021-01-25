---
- name: Install nginx & git
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

    - name: Clone git repo
      git:
       repo: "https://github.com/CesarLortet/TP-Final_DevOps-HTML-Cesar_Lortet.git"
       dest: /var/www/html/
