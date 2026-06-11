#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/ProjectRepo_2/_repo/communis/Bat/alt/this_hooks.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#upgit

unset filename

pre_push() { # $1=$repo_path

    echo -e "${CYAN}---pre_push()---${NORMAL}" #started functions

    echo -e "${ULINE}rm -rf "$1/_repo/communis/Sis_USER/.os"${NORMAL}" #repit commands
    rm -rf "$1/_repo/communis/Sis_USER/.os"

    echo -e "${ULINE}cp -rf "$HOME/.os" "$1/_repo/communis/Sis_USER"${NORMAL}" #repit commands
    cp -rf "$HOME/.os" "$1/_repo/communis/Sis_USER"

    echo -e "${ULINE}rm -rf "$1/_repo/communis/Sis_USER/.qa"${NORMAL}" #repit commands
    rm -rf "$1/_repo/communis/Sis_USER/.qa"

    echo -e "${ULINE}cp -rf "$HOME/.qa" "$1/_repo/communis/Sis_USER"${NORMAL}" #repit commands
    cp -rf "$HOME/.qa" "$1/_repo/communis/Sis_USER"

    echo -e "${ULINE}cp -rf "$HOME/.vscode" "$1/_repo/communis/Store/Vs"${NORMAL}" #repit commands
    cp -rf "$HOME/.vscode" "$1/_repo/communis/Store/Vs"

    echo -e "${ULINE}rm -rf "$1/_repo/communis/Store/Vs/.vscode_"${NORMAL}" #repit commands
    rm -rf "$1/_repo/communis/Store/Vs/.vscode_"

    echo -e "${ULINE}mv "$1/_repo/communis/Store/Vs/.vscode" "$1/_repo/communis/Store/Vs/.vscode_"${NORMAL}" #repit commands
    mv "$1/_repo/communis/Store/Vs/.vscode" "$1/_repo/communis/Store/Vs/.vscode_"

    echo -e "${ULINE}cp -f "$HOME/.bashrc" "$1/_repo/communis/Sis_USER/.os/_arh"${NORMAL}" #repit commands
    cp -f "$HOME/.bashrc" "$1/_repo/communis/Sis_USER/.os/_arh"

    echo -e "${ULINE}cp -f "$HOME/.gitrepo" "$1/_repo/communis/Sis_USER/.os/_arh/"${NORMAL}" #repit commands
    cp -f "$HOME/.gitrepo" "$1/_repo/communis/Sis_USER/.os/_arh/"

    echo -e "${ULINE}cp -f "$HOME/.gituid" "$1/_repo/communis/Sis_USER/.os/_arh/"${NORMAL}" #repit commands
    cp -f "$HOME/.gituid" "$1/_repo/communis/Sis_USER/.os/_arh/"

    echo -e "${ULINE}cd "$1/_repo/communis/"${NORMAL}" #repit commands

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
