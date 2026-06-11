#!/bin/bash

echo -e "${CYAN}--- add_hie_rnd7_68e720e() $* in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/add_hie.sh---${NORMAL}" #started functions

add_hie_rnd7_68e720e() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${ST_RC_D_PATH}/.d/.arb/stl0.arb/_add_hie.sh"
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        _st_exit "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1"
        return 1
    }

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
TAGS: @
ARGS: \$1
EXAM: 
EXEC: 
CNTL: 
    _go  : _edit ${path_file}
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
    ${FNN} 
${NORMAL}"
    fi

    if [[ "_go" == "$1" ]]; then
        _edit "${path_file}"
        return 0
    fi

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} less more "in fs= file://${path_file} , line=${LINENO}, ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    # local _ARGS_=("$@")
    # _parr3e _ARGS_

    #{{ptr_path}}

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    #{{body_fn}}

    local dir_stl0=${ST_RC_D_PATH}/.d/.arb/stl0.arb

    local item=
    local name_item=

    for item in $(_dd2e ${dir_stl0}); do

        name_item=$(_prs_f -n $item)
        frame_path=${dir_stl0}/${item}/.grot/${name_item}
        sh_path=${frame_path}.sh
        file ${sh_path}
        # read -rp 1
        [ -f ${frame_path}.hie ] || {
            cp ${HOME}/.d/.rpn.ax.d/tml.ax.d/.hie/stl0/XXX/tml.hie ${frame_path}.hie
            # _edit ${frame_path}.hie
            # read -rp 2
            _s2f XXX ${name_item} ${frame_path}.hie
            # read -rp 3
        }
    done

    #! END BODY FN ---------------------------------------

    return 0

}

add_hie_rnd7_68e720e "$@"
