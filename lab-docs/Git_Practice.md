Git practice Session:
--------------------
Date: 13/08/2024

1)how to clone the branch
  #git clone <repo url of git>
2)How to chnage the branch and create the branch
  #by deafault master branch is active. follow below commands 
  #git branch develop -->to create the new branch
  #git branch --> disaplay the branches
  #git checkout develop --> chnage the branch from master to develop
  #git switch devlop --> this also change branch
  #git branch -M feature-->it will change name from master to feature and change the branch 
3)I  hav e modi fied/f ormatted some code whi le going  thr ough  i t.Now  I  want  the code  to be back  to  the state as  i t was.
  #git reset --hard  -->to reset all chnages 
  #git reset hard --<file-path>