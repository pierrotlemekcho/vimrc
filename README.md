# vimrc
### suivre les deux tutos

https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/

http://qanuq.com/configuration-vim-avec-vundle-et-github/

### usage

#### initialiser avec GITHUB
```
pierre@IDEFIX:~$ mkdir .vim
pierre@IDEFIX:~$ cd .vim
pierre@IDEFIX:~/.vim$ git init
pierre@IDEFIX:~/.vim$ git clone https://github.com/pierrotlemekcho/vimrc.git
pierre@IDEFIX:~/.vim$ ln -s $HOME/.vim/vimrc $HOME/.vimrc
```

#### cloner Vundle

```pierre@IDEFIX:~/.vim$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim ```

pour python3 compiler

https://github.com/Valloric/YouCompleteMe

faire :
python3 ./install.py --clang-completer


