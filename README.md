vimrc
### suivre les deux tutos

https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/


a verifier --> ttp://qanuq.com/configuration-vim-avec-vundle-et-github/
### usage

#### initialiser avec GITHUB 
un repertoir .vim contenant le vimrc et creer un lien pour que vim le source au demarage de vim
```
pierre@IDEFIX:~/.vim$ git clone https://github.com/pierrotlemekcho/vimrc.git ~/.vim
pierre@IDEFIX:~/.vim$ ln -s $HOME/.vim/vimrc $HOME/.vimrc
```

#### cloner Vundle

```pierre@IDEFIX:~/.vim$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim ```


installer les Pluging dans vim
ouvrir vim et faire :PluginInstall

Il faut compiler YouCompleteMe
https://github.com/Valloric/YouCompleteMe

faire :
cd ~/.vim/bundle/YouCompleteMe
python3 ./install.py --all


