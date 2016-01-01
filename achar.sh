#!/bin/bash

# Localizar uma string nos arquivos de tradução dos pacotes
# Parece não funcionar... :/

  string="^_:"

if [ "$1" != "" ] ; then
       string=$1
   fi
   for i in /usr/share/locale/pt_BR/LC_MESSAGES/*.mo
   do
    echo $i
          if msgunfmt $i 2> /dev/null | msggrep -T -e "$string"  2>/dev/null | grep "." ; then
                     echo $i
                            echo
                               fi
                           done
