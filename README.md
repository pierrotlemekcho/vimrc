vimrc
### suivre les deux tutos

https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/

https://blog.pabuisson.com/2014/07/vim-vundle-gestion-plugins/
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

YouCompleteMe à besoin des modules python :setuptools wheel jedi parso 
pour ne pas poluer le python systeme , il faut les installer dans un (venv)

# Aller dans le dossier de config Vim 
cd ~/.vim
# Créer un dossier pour l'environnement
python3 -m venv ycm_venv
# L'activer
source ycm_venv/bin/activate
(ycm_venv) pierre@IDEFIX:~$

Dans cet environnement virtuel, installer les outils nécessaires à la complétion Python :
pip install --upgrade pip setuptools wheel jedi parso
plutot faire : pip install -r requirements.txt


aller dans le dossier YCM et compiler 
pierre@IDEFIX:~/.vim/bundle/YouCompleteMe$python3 install.py --all

la fonction AutoDetectAndActivateVenv() de vimrc permet de detecter le python qui correspond au (venv) du repertoire de travail
ou par défault le python de ymc_venv

Vim :
garde les bons chemins Python partout (YCM, ALE, pylint, ruff…),
et evite avec les environnements.



