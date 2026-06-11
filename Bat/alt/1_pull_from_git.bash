#!/bin/bash

. $HOME/.bashrc

filename="/home/st/ProjectRepo_2/_repo/Lexicon/Bat/alt/1_pull_from_git.bash"

echo -e "${HLIGHT}---start file: $filename--${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

up_lib_git

e_git

unset filename

echo -e "${ULINE}cd "$repo_path/_repo/communis/"${NORMAL}" #repit commands
cd "$repo_path/_repo/communis/" || e_exer "cd err" "$filename" "$LINENO"cd '/home/st/data_1/communis'

echo -e "${ULINE}git pull origin master${NORMAL}" #repit commands
git pull origin master
