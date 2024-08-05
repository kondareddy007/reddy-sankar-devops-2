### Create an account at https://sonarcloud.io
1) Generate authentication token on sonarqube
Ans) sonarcloud->my account->security-> generate token and copy 

2)Create credential for token in jenkins00
Ans) Manage jenkins->credentials->global credentilas-
kind- secret text
secret -> paste the sonarqube token
id ->sonarqube-tokens
description-->

3)Download "sonarqube scanner" plugin on jenkins

4)configure sonarqube server
manage jenkins-> system-> sonar installation-> 
Name ->sonarqube-server
server url-> https://sonarcloud.io/
server authenticaton token --> paste here

5)Add sonarqube scanner to jenkins
Ans) Manage jenkins->tools->sonar scanner->
    name=SonarScanner
    installed automatically
create sonarqube property file
add sonarqube stage in the jenkins file