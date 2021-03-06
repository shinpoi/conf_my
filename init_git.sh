#!/bin/bash
# git setting: /etc/bash_completion.d/git

git config --global alias.cm 'commit -m'
git config --global alias.st 'status'
git config --global alias.all 'add --all'
git config --global alias.pm 'push origin master'
git config --global alias.ck 'checkout'
git config --global alias.br 'branch'
git config --global alias.ri 'rebase -i'
git config --global alias.pp 'pull up'
git config --global alias.sync 'pull up master'

git config --global color.ui true

git config --global alias.lg 'log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# git config --global user.name "---"
# git config --global user.email "---"

echo '[ init_git.sh fin ]'

