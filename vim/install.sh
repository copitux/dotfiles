#!/usr/bin/bash

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -u $HOME/.vim/bundles.vim +BundleInstall +q
