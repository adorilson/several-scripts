#!/bin/bash

general_stuff(){
echo "Coisas diversas"
sudo apt-get install --yes ubuntu-restricted-extras glipper pdfchain
account-plugin-irc firefox gnucash pdfshuffler amule pyrenamer
wine gnome-do gnome-do-plugins gparted gnome-mplayer mplayer htop
nautilus-admin nautilus-open-terminal openssh-server pastebinit pidgin
}
 
devs(){
echo "Coisas diversas para desenvolvimento"
sudo apt-get install --yes build-essential git gitk gedit-developer-plugins
gedit-plugins geany gtranslator meld
libgdome2-0 libgnet2.0-0
guile-2.0-dev libcairomm-1.0-dev libdbus-glib-1-dev libgdome2-dev
libglib2.0-dev libglibmm-2.4-dev libgnet-dev libgstreamer0.10-dev libgtkmm-3.0-dev
libpanel-applet-4-dev libpangomm-1.4-dev libpulse-dev libsigc++-2.0-dev libxmu-dev
libxtst-dev lib32stdc++6
} 

latex_stuff(){
echo "Coisas de Latex"
sudo apt-get install --yes 
texlive-science         texlive-xetex               textlive-math-extra
texlive-lang-portuguese texlive-fonts-recommended   texlive-latex-extra
texlive-publishers      texlive-publishers-doc      abntex 
latexdiff               latex-beamer                texlive
texmaker                gedit-latex-plugin          texlive-humanities

git clone https://gitlab.com/git-latexdiff/git-latexdiff.git ~/workspace/

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
sudo apt-get install --yes python-pip python-dev bpython ipython
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

to_children(){
echo 'to_children'
sudo apt-get install --yes ktuberling gcompris-sound-ptbr
}

#   

# instalar do repo funcoeszz

python-cheetah python-django python-sqlite python-scipy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     python3-minimal skype slib startupmanager subversion sun-java6-jre tuxmath tuxpaint tuxpaint-plugins traceroute ubuntu-restricted-extras vim vlc wireshark workrave xchat x11proto-record-dev   babel  aspell-pt-br gedit-plugins  rake rubber ruby  ipython  

set_environment(){
echo "# setting Android home sdk" >>~/.bashrc
echo "export ANDROID_HOME=/home/adorilson/workspace/ides/Android/sdk" >>~/.bashrc

# setting history command >>~/.bashrc
echo "export HISTIGNORE='ls:pwd:sudo apt-get autoremove:export'" >>~/.bashrc
echo "export HISTCONTROL=ignoreboth:erasedups" >>~/.bashrc

# setting git latexdiff
echo "export PATH=~/workspace/git-latexdiff:$PATH" >>~/.bashrc
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
