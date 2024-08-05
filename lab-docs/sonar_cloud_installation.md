### Create an account at https://sonarcloud.io
### Generate authentication token on sonarqube
Ans) sonarcloud->my account->security-> generate token and copy 
###Create credential for token in jenkins00
Ans) Manage jenkins->credentials->global credentilas-
kind- secret text
secret -> paste the sonarqube token
id ->sonarqube-tokens
description-->
###Download "sonarqube scanner" plugin on jenkins
###configure sonarqube server
manage jenkins-> system-> sonar installation-> 
Name ->sonarqube-server
server url-> https://sonarcloud.io/
server authenticaton token --> paste here
###Add sonarqube scanner to jenkins
Ans) Manage jenkins->tools->sonar scanner->
    name=SonarScanner
    installed automatically
create sonarqube property file
add sonarqube stage in the jenkins file