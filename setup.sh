#!/bin/bash

#Installing vim
sudo apt-get install vim-gnome
mkdir -p ~/.vim

 ##Installing Pathogen
 mkdir -p autoload
 curl -Lls https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim

 ##Installing airline
 dir=~/.vim/bundle/vim-airline
 if [ ! -d "$dir" ]; then
   git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
 fi
    
 ##Installing vim-airline themes
 dir=~/.vim/bundle/vim-airline-themes
 if [ ! -d "$dir" ]; then
  git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
 fi

 ##Installing powerline fonts
 git clone git@github.com:powerline/fonts.git
 cd fonts/
 ./install.sh
 cd ..
 rm -r fonts/

 # Copying .vimrc
 cp -i .vimrc ~/

 #Command to run
  :Helptags #generate helptags
  # Modify font into powerline font in terminal





#Installing screen
sudo apt-get install screen
cp -i .screenrc ~/

#Installing gitk
sudo apt-get install gitk -y