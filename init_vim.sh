#!/bin/bash
cp $src/vim.lucario.vim $out/vim.lucario.vim
cp $src/vim.vimrc $out/vim.vimrc

mkdir -p ~/.vim/colors

ln -sf $out/vim.lucario.vim $HOME/.vim/colors/lucario.vim
echo "link $out/vim.lucario.vim to $HOME/.vim/colors/lucario.vim"

ln -sf $out/vim.vimrc $HOME/.vimrc
echo "link $out/vim.vimrc $HOME/.vimrc"

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  echo 'not found Vundle, git clone...'
  mkdir -p $HOME/.vim/bundle
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "install vim plugins..."
vim +PluginInstall +qall

echo '[ init_vim.sh fin ]'

