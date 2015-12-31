sudo apt-get update -y
sudo apt-get upgrade -y

## install oh-my-zsh
sudo apt-get install zsh 
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp zshrc ~/.zshrc

# install my favourite one
sudo apt-get install emacs
git clone https://github.com/chris-void/emacs.d.git ~/.emacs.d
cp ~/.emacs.d/emacs ~/.emacs

