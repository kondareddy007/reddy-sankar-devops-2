#sed -i 's/installed/present/g' jenkins-slave-maven-setup.yaml
here replace the present word in installed word in file.

#ansible -i hosts all -m ping --to check the server connection from ansible server

Terrform commands:-
-----------------
#terraform init
#terraform validate
#terraform plan
#terraform apply

Maven Integration:
-----------------
M2_HOME=/opt/maven
M2=//opt/maven/bin
JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
PATH=$PATH:$HOME/bin:$JAVA_HOME:$M2_HOME:$M2
export $PATH


find / -name java-17*
or find / -name jvm ---> to find the jdk location
