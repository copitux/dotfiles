#!/usr/bin/bash

git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -u bundles.vim +BundleInstall +q
