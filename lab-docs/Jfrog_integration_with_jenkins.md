1) Create an atifactory account
2)Genereate access toke with username
  Jfrg account->administration->usermanagement->access token ->enter usrename ->create-> copy access token
  3)Add username and password under jenkins credentials
    manage jenkins->credentials->kind(username with password)->enter username->enter password(access token)->
    id(jfrof-access-token)

4)Install artifactory plugin (Type artifactory)
5)Update jenkins file with jar pubic stage
6)Create a dockerfile
7)create and public docker image on Artifactory.