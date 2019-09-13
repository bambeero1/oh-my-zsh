

install_req(){

    sudo apt-get update
    sudo apt-get -yy install apt-transport-https ca-certificates curl software-properties-common wget
    sudo apt-get -yy install git python-dev python-pip python3-dev python3-pip gcc g++ make cmake virtualenv build-essential
    sudo python3 -m pip install --upgrade pip
    sudo python2 -m pip install --upgrade pip
    sudo apt-get update && sudo apt install zsh powerline fonts-powerline zsh-syntax-highlighting
}


install_zsh(){

    git clone https://github.com/bambeero1/oh-my-zsh.git ~/.oh-my-zsh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    chsh -s $(which zsh)
}

install_req
install_zsh
