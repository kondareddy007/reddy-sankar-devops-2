Ansible Errors:-
--------------
Date: 30/07/2024
1) fatal: [10.1.1.162]: FAILED! => {"changed": false, "dest": "/opt", "elapsed": 0, "gid": 0, "group": "root", "mode": "0755", "msg": "Request failed", "owner": "root", "response": "HTTP Error 404: Not Found", "size": 4096, "state": "directory", "status_code": 404, "uid": 0, "url": "https://dlcdn.apache.org/maven/maven-3/3.9.1/binaries/apache-maven-3.9.1-bin.tar.gz"}

solution:- When you provide the wrong url you will get 404 error.

2) fatal: [10.1.1.162]: FAILED! => {"changed": false, "msg": "value of state must be one of: absent, build-dep, fixed, latest, present, got: installed"}
Solution: I provided state is "Unstalled" so i got above error. After i changed to state is "present". now yaml file running as expected.

3) ssh connection failed due to permission denied error
   i added dpo.pem file. i has read and write permission so i got above error. 
   Solution: removed write permission to dpo.pem file. Now no error
   #chmod 400 dpo.pem

4) How to fix Terraform 'acquiring the state lock' error
planing to destroy the server but getting above error. I run below commands and solve the problem. I kill the terrraform destroy ID.
ps aux | grep terraform
kill -9 <terraform destroy ID>