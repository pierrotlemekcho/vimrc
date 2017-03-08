# vimrc
### suivre les deux tutos

https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/

http://qanuq.com/configuration-vim-avec-vundle-et-github/

### usage

#### initialiser avec GITHUB
'''
mkdir $HOME/.vim

cd $HOME/.vim

git init

touch vimrc

git add vimrc

git commit -m "First commit"

git remote add origin https://github.com/ardeidae/myvimrc.git

git push -u origin master

ln -s $HOME/.vim/vimrc $HOME/.vimrc

'''

#### cloner Vundle

''' git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim '''
