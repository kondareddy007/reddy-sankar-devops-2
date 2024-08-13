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
4)I have committed my changes. How can I undo my change?
  You can undo the commit by resetting the HEAD. If you just want to undo the commit but let the
changes be present then use the soft attribute else if you do want the commit along with the
changes then use the hard attribute
git reset --soft HEAD~1 (undo with changes preserved)
git reset --hard HEAD~1 (undo with changes removed)

