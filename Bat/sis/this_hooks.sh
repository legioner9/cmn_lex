#!/bin/bash

#. "$HOME/.bashrc"

name_this_repo="$(basename $(dirname $(dirname "$(pwd)")))"
echo -e "${GREEN}\$name_this_repo = $name_this_repo${NORMAL}" #print variable

filename="$HOME/ProjectRepo_2/_repo/$name_this_repo/Bat/sis/this_hooks.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#upgit

unset filename

pre_push() { # $1=$repo_path $2=$did

    echo -e "${CYAN}---pre_push()---${NORMAL}" #started functions

    if ! [ -d $1/_repo/$name_this_repo/Sis_USER/$2/ ]; then
        mkdir "$1/_repo/$name_this_repo/Sis_USER/$2/"
    fi

    if ! [ -d $1/_repo/$name_this_repo/Store/Vs/$2/ ]; then
        mkdir "$1/_repo/$name_this_repo/Store/Vs/$2/"
    fi

    echo -e "${ULINE}rm -rf "$1/_repo/$name_this_repo/Sis_USER/$2/.os"${NORMAL}" #repit commands
    rm -rf "$1/_repo/$name_this_repo/Sis_USER/$2/.os"

    echo -e "${ULINE}cp -rf "$HOME/.os" "$1/_repo/$name_this_repo/Sis_USER/$2/"${NORMAL}" #repit commands
    cp -rf "$HOME/.os" "$1/_repo/$name_this_repo/Sis_USER/$2/"

    echo -e "${ULINE}rm -rf "$1/_repo/$name_this_repo/Sis_USER/$2/.qa"${NORMAL}" #repit commands
    rm -rf "$1/_repo/$name_this_repo/Sis_USER/$2/.qa"

    echo -e "${ULINE}cp -rf "$HOME/.qa" "$1/_repo/$name_this_repo/Sis_USER/$2/"${NORMAL}" #repit commands
    cp -rf "$HOME/.qa" "$1/_repo/$name_this_repo/Sis_USER/$2/"


    echo -e "${ULINE}rm -rf "$1/_repo/$name_this_repo/Sis_USER/$2/.qa"${NORMAL}" #repit commands
    rm -rf "$1/_repo/$name_this_repo/Sis_USER/$2/sis"

    echo -e "${ULINE}cp -rf "cp -rf "$1/_repo/name_this_repo/Bat/sis" "$1/_repo/$name_this_repo/Sis_USER/$2/""${NORMAL}" #repit commands
    cp -rf "$1/_repo/$name_this_repo/Bat/sis" "$1/_repo/$name_this_repo/Sis_USER/$2/"


    echo -e "${ULINE}cp -rf "$HOME/.vscode" "$1/_repo/$name_this_repo/Store/Vs/$2/"${NORMAL}" #repit commands
    cp -rf "$HOME/.vscode" "$1/_repo/$name_this_repo/Store/Vs/$2/"

    echo -e "${ULINE}rm -rf "$1/_repo/$name_this_repo/Store/Vs/$2/.vscode_"${NORMAL}" #repit commands
    rm -rf "$1/_repo/$name_this_repo/Store/Vs/$2/.vscode_"

    echo -e "${ULINE}mv "$1/_repo/$name_this_repo/Store/Vs/$2/.vscode" "$1/_repo/$name_this_repo/Store/Vs/$2/.vscode_"${NORMAL}" #repit commands
    mv "$1/_repo/$name_this_repo/Store/Vs/$2/.vscode" "$1/_repo/$name_this_repo/Store/Vs/$2/.vscode_"

    echo -e "${ULINE}cp -f "$HOME/.bashrc" "$1/_repo/$name_this_repo/Sis_USER/$2/.os/_arh"${NORMAL}" #repit commands
    cp -f "$HOME/.bashrc" "$1/_repo/$name_this_repo/Sis_USER/$2/.os/_arh"

    echo -e "${ULINE}cp -f "$HOME/.gitrepo" "$1/_repo/$name_this_repo/Sis_USER/$2/.os/_arh/"${NORMAL}" #repit commands
    cp -f "$HOME/.gitrepo" "$1/_repo/$name_this_repo/Sis_USER/$2/.os/_arh/"

    echo -e "${ULINE}cp -f "$HOME/.gituid" "$1/_repo/$name_this_repo/Sis_USER/$2/.os/_arh/"${NORMAL}" #repit commands
    cp -f "$HOME/.gituid" "$1/_repo/$name_this_repo/Sis_USER/$2/.os/_arh/"

}

export pre_push

post_push() {
    echo -e "${HLIGHT}---post_push---${NORMAL}" #start files
}

pre_pull() {
    echo -e "${HLIGHT}---pre_pull---${NORMAL}" #start files
}

post_pull() {
    echo -e "${HLIGHT}---post_pull---${NORMAL}" #start files
}
