#!/bin/bash

vimFilePath="/mnt/c/Users/IsitaDev013/.vimrc"
emacsFilePath="/home/james/.emacs.d/init.el"
tmuxFilePath="/mnt/c/Users/IsitaDev013/.tmux.conf"

# echo "${vimFilePath}"
# echo "${emacsFilePath}"
# echo "${tmuxFilePath}"

cp $vimFilePath ./vim/.vimrc
resposneVimFile=$?
# echo "${resposneVimFile}"
cp $emacsFilePath ./emacs/init.el
responseEmacsFile=$?
# echo "$?"
cp $tmuxFilePath ./tmux/.tmux.conf
responseTmuxFile=$?
# echo "$?"

response=$(($resposneVimFile + $responseEmacsFile + $responseTmuxFile))

# echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
# echo $response

if [ $response -gt 0 ] 
then
  git add .
  git status
  git commit -m "Archivos actualizados"
  git push origin main
  git log -1 -p
  echo "Los archivos han sido agregados al repositorio"
else
  echo "Nada que agregar :D"
fi
