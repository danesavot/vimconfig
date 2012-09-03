# Clean Environment
rm -r ~/.vim
mv $vimrc $vimrc.bak

# install vim, required mercuria install
hg clone https://vim.googlecode.com/hg/ ~/sources/vim
cd ~/sources/vim/src
./configure --enable-rubyinterp
make
sudo make install
vimrc=~/.vimrc
vimconfighome=~/project/vimconfig
vimrcconfig=$vimconfighome/.vimrc
git clone https://github.com/danesavot/vimconfig.git $vimconfighome

	
cp $vimrcconfig $vimrc 

#install vunlde (Vim plugin manager)
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

#Configure Command-t
git clone https://github.com/wincent/Command-T.git ~/.vim/bundle/command-t
cd ~/.vim/bundle/command-t
rake make
