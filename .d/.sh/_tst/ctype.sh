#!/usr/bin/bash

if [[ -n "$1" ]];then
    cd $1 || {
        echo -e "${ECHO_RET1}in file://${fn_nm} , line=${LINENO} :: EXEC : 'cd $1' in $(pwd), 'RESUME :: $1 IS_NOT dir' return 1${NRM}" >&2
        return 1
    }
fi

if  lfoe_this_dir_git2e > $HOME/null  ;then
    echo "$(lfoe_this_dir_git2e)"
else
    echo -e "${ECHO_RET1} , line=${LINENO} :: EXEC : 'lfoe_this_dir_git2e' in $(pwd), 'RESUME :: IS_NOT git dir' return 1${NRM}" >&2
    return 1
fi