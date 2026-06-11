#!/bin/bash

# cd /home/st/ProjectRepo_2/_repo/communis/Bat/sis/ # debag

. $HOME/.bashrc

name_this_repo="$(basename $(dirname $(dirname "$(pwd)")))"
echo -e "${GREEN}\$name_this_repo = $name_this_repo${NORMAL}" #print variable

filename="$HOME/ProjectRepo_2/_repo/$name_this_repo/Bat/sis/2_push_to_git.bash"

echo -e "${HLIGHT}---start file: $filename--${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

# up_lib_git

if [ $name_this_repo == "communis" ]; then

    echo -e "${ULINE}. $repo_path/_repo/$name_this_repo/Bat/sis/this_hooks.sh${NORMAL}" #repit commands
    . $repo_path/_repo/$name_this_repo/Bat/sis/this_hooks.sh

    echo -e "${ULINE}pre_push${NORMAL}" #repit commands
    pre_push $repo_path $did # debag

    unset pre_push
fi

# echo -e "${ULINE}cd "$repo_path/_repo/$name_this_repo/"${NORMAL}" #repit commands
# cd "$repo_path/_repo/$name_this_repo/" || e_exer "cd err" "$filename" "$LINENO"
cdrepo $name_this_repo

echo -e "${ULINE}git add .${NORMAL}" #repit commands
git add .

echo -e "${ULINE}git commit${NORMAL}" #repit commands
git commit # debag

echo -e "${ULINE}git push origin master${NORMAL}" #repit commands
git push origin master

echo -e "${ULINE}git push _bare master${NORMAL}" #repit commands
git push _bare master

for bare_path in "${bare_arr_path[@]}"; do

    bare_name=$(basename "$bare_path")

    echo -e "${ULINE}git push $bare_name master${NORMAL}" #repit commands
    git push "$bare_name" master

done

unset name_this_repo

unset bare_path

unset filename
