alias giturl="cat .git/config | grep url | sed 's/:/\//g; s/\.git//; s/git@/https:\/\//g; s/ *url *= *//g;'"
alias gitgit="cat .git/config | grep url | sed 's/*url *= *//g;'"
