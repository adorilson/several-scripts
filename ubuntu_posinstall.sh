#!/bin/bash

general_stuff(){
echo "Coisas diversas"
sudo apt install --yes ubuntu-restricted-extras gpaste \
empathy gnucash pdfshuffler amule wine-stable gnome-do gnome-do-plugins \
gparted mplayer htop nautilus-admin openssh-server pastebinit pidgin \
funcoeszz subversion traceroute vim vlc wireshark workrave xchat aspell-pt-br
}

devs(){
echo "Coisas diversas para desenvolvimento"
sudo apt install --yes build-essential git gitk gedit-developer-plugins \
gedit-plugins geany gtranslator meld libgdome2-0 libgdome2-dev \
guile-2.2-dev guile-2.2 libcairomm-1.0-dev  \
libdbus-glib2.0-cil libdbus-glib2.0-cil-dev \
libglibmm-2.4-dev libgstreamer1.0-dev libgtkmm-3.0-dev \
libpanel-applet-dev libpulse-dev libxmu-dev lib32stdc++6 \
slib
}

latex_stuff(){
echo "Coisas de Latex texlive*"
sudo apt install --yes
texlive-science         texlive-xetex               abntex \
texlive-publishers      texlive-publishers-doc      texlive \
texlive-humanities      latexdiff                            \
texmaker                gedit-latex-plugin                   \

git clone https://gitlab.com/git-latexdiff/git-latexdiff.git ~/workspace/
}


java_stuff(){
echo "Coisa de Java TODO"
#sudo apt-get install --yes openjdk-7-jre-headless openjdk-7-jdk

# I use Android Studio, so I need Java Oracle
sudo apt-get install --yes python-software-properties # just for manage repository by a easy way
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update --yes
sudo apt-get install oracle-java9-installer
}

python_stuff(){
echo "Coisas de Python"
sudo apt install --yes python3-pip python3-dev bpython3 ipython3 python3-lxml \
python-cheetah python3-django python-sqlite python3-scipy
sudo pip3 install virtualenv virtualenvwrapper
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
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2018.11.28_amd64.deb -O /tmp/dropbox.deb
sudo dpkg -i /tmp/dropbox.deb
}


upgrade(){
echo "Upgrade"
sudo apt update --yes
sudo apt upgrade --yes
}

remove(){
echo "Remove"
sudo apt-get remove --yes thunderbird deja-dup
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

to_children(){
echo 'to_children'
sudo apt install --yes ktuberling gcompris tuxmath tuxpaint tuxpaint-plugins-default
}
 
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
#python_stuff
#devs
#skype_stuff
graphic_tools
