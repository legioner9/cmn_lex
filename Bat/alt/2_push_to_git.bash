#!/bin/bash

. $HOME/.bashrc

filename="/home/st/ProjectRepo_2/_repo/Lexicon/Bat/alt/2_push_to_git.bash"

echo -e "${HLIGHT}---start file: $filename--${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

up_lib_git

e_git

echo -e "${ULINE}. $repo_path/_repo/communis/Bat/alt/this_hooks.sh${NORMAL}" #repit commands
. $repo_path/_repo/communis/Bat/alt/this_hooks.sh

echo -e "${ULINE}pre_push${NORMAL}" #repit commands
pre_push $repo_path

unset pre_push

echo -e "${ULINE}cd "$repo_path/_repo/communis/"${NORMAL}" #repit commands
cd "$repo_path/_repo/communis/" || e_exer "cd err" "$filename" "$LINENO"

echo -e "${ULINE}git add .${NORMAL}" #repit commands
git add .

echo -e "${ULINE}git commit${NORMAL}" #repit commands
git commit

echo -e "${ULINE}git push origin master${NORMAL}" #repit commands
git push origin master

unset filename
