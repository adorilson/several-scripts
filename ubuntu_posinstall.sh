#!/bin/bash

general_stuff(){
echo "Coisas diversas"
sudo apt-get install --yes ubuntu-restricted-extras parcellite pdfchain
}

devs(){
echo "Coisas diversas para desenvolvimento"
sudo apt-get install --yes build-essential git-core ia32-libs gedit-developer-plugins
}

java_stuff(){
echo "Coisa de Java"
sudo apt-get install --yes openjdk-7-jre-headless openjdk-7-jdk 
}

python_stuff(){
echo "Coisas de Python"
sudo apt-get install --yes python-pip python-dev
sudo pip install virtualenv virtualenvwrapper
sudo apt-get build-dep python-lxml
}

conf_virtualenvwrapper(){
echo "Configurando virtualenvwrapper"
# Referencia: http://www.arruda.blog.br/programacao/python/usando-virtualenvwrapper/
mkdir ~/.virtualenvs
cp ~/.bashrc ~/.bashrc_OLD
echo "\n" >> ~/.bashrc
echo "export WORKON_HOME=~/.virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source ~/.bashrc
}

dropbox_stuff(){
echo "Dropbox"
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.6.0_amd64.deb -O /tmp/dropbox_1.6.0_amd64.deb
sudo dpkg -i /tmp/dropbox_1.6.0_amd64.deb
}


upgrade(){
echo "Upgrade"
sudo apt-get update --yes
sudo apt-get upgrade --yes
}

remove(){
echo "Remove"
sudo apt-get remove --yes thunderbird deja-dup mysql-common
}

skype_stuff(){
echo "Skype"
wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64 -O /tmp/skype.deb
sudo dpkg -i /tmp/skype.deb
}

graphic_tools(){
echo 'GIMP, Inkscape etc.'
sudo apt-get install --yes gimp inkscape dia
}

mendeley(){
echo 'Mendeley'
sudo wget http://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest -O /tmp/mendeley.deb
sudo dpkg -i /tmp/mendeley.deb
}

#remove
#upgrade
#general_stuffs
mendeley
