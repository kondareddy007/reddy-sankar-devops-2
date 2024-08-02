Jenkins installation:-
-------------------
Modules:-
1) downloading jenkins repo key
   apt_key, url, state
2)Adding repository
  apt_repository, repo,state
3) Install java
   apt, name, state
4) Install jenkins
   apt, name , state
5) start jenkins
   service, name , state
6) enable jenkins
   service, name, state
---
- hosts: jenkins-master   #script run on jenkins-master server 
  become: true # as a root 
  tasks: 
  - name: download Jenkins repo key 
    apt_key:   
      url:  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
      state: present 

  - name: Add Jenkins repo 
    apt_repository: 
      repo: 'deb https://pkg.jenkins.io/debian-stable binary/'
      state: present 

  - name: install java
    apt: 
      name: openjdk-17-jre
      state: present 

  - name: install jenkins 
    apt: 
      name: jenkins 
      state: present 

  - name: start jenkins service 
    service:
      name: jenkins 
      state: started 
  
  - name: enable jenkins service to start at boot time 
    service: 
      name: jenkins 
      enabled: yes 
