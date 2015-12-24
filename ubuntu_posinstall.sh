#!/bin/bash

general_stuff(){
echo "Coisas diversas"
sudo apt-get install --yes ubuntu-restricted-extras parcellite pdfchain texlive-science
texlive-xetex textlive-math-extra account-plugin-irc firefox gnucash pdfshuffler
wine
}

devs(){
echo "Coisas diversas para desenvolvimento"
sudo apt-get install --yes build-essential git gedit-developer-plugins
}

java_stuff(){
echo "Coisa de Java"
#sudo apt-get install --yes openjdk-7-jre-headless openjdk-7-jdk 

# I use Android Studio, so I need Java Oracle
sudo apt-get install --yes python-software-properties # just for manage repository by a easy way
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update --yes
sudo apt-get install oracle-java9-installer
}

python_stuff(){
echo "Coisas de Python"
sudo apt-get install --yes python-pip python-dev
sudo pip install virtualenv virtualenvwrapper
sudo apt-get build-dep python-lxml
}

conf_virtualenvwrapper(){
echo "Configurando virtualenvwrpper"
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
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb -O /tmp/dropbox.deb
sudo dpkg -i /tmp/dropbox.deb
}


upgrade(){
echo "Upgrade"
sudo apt-get update --yes
sudo apt-get upgrade --yes
}

remove(){
echo "Remove"
sudo apt-get remove --yes thunderbird deja-dup libreoffice*
}

libreoffice5(){
echo "LibreOffice 5"
# Referencia http://news.softpedia.com/news/how-to-install-libreoffice-5-0-on-ubuntu-15-04-14-04-lts-and-12-04-lts-488713.shtml
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt-get update
sudo apt-get install libreoffice libreoffice-l10n-pt-br
}

skype_stuff(){
echo "Skype"
wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64 -O /tmp/skype.deb
sudo dpkg -i /tmp/skype.deb
# talvez apenas não funcione, então tente
# sudo apt-get -f install
# TODO fixme
}

graphic_tools(){
echo 'GIMP, Inkscape etc.'
sudo apt-get install --yes gimp inkscape dia
}

mendeley(){
echo 'Mendeley'
wget http://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest -O /tmp/mendeley.deb
sudo dpkg -i /tmp/mendeley.deb
}

copy(){
echo 'Copy https://www.copy.com TODO: need to improveit '
wget - "https://copy.com/install/linux/Copy.tgz" -O /opt/copy.tgz
cd /opt && sudo tar xzf /opt/copy.tgz
sudo /opt/copy/x86_64/CopyAgent –installOverlay
}

#remove
#upgrade
#general_stuffs
mendeley
#java_stuff
#dropbox_stuff
#copy
#libreoffice5
#python_stuff
#devs
#skype_stuff
graphic_tools
