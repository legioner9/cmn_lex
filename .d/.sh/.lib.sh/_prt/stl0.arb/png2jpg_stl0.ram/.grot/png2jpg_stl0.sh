#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/png2jpg_stl0.ram/.grot/png2jpg_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

png2jpg_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/png2jpg_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/png2jpg_stl0.ram/.grot/png2jpg_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/png2jpg_stl0.ram/.grot/png2jpg_stl0.sh)

    echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: upath name_file.png (\$1) to name_file.jpg instead
TAGS:
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTL: 
    _go  : _edit ${d_name}/${FNN}.sh
    _tst :  . ${d_name}/_tst/exec.tst
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
EXAM:
    ${FNN} 
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}

    if [[ "_go" == "$1" ]]; then
        _edit "${d_name}/${FNN}".sh
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/exec.tst ]]; then
            . ${d_name}/_tst/exec.tst
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    hint="\$1: name_file.png "
    if _isn_from ${NARGS} 1 1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd ${PPWD}
        return 1
    fi

    #! ptr_path
    local ptr_path="$1"
    ptr_path="$(_abs_path "${PPWD}" "ptr_path")"
    #[[ptr_path]]

    if ! [[ -f ${ptr_path} ]]; then
        # hint="\$1: \$2: "
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${ptr_path}' : ${hint} : return 1"
        cd ${PPWD}
        return 1
    fi

    local file_ext=$(_prs_f -e ${ptr_path})

    if ! [[ ${file_ext} = "png" ]]; then
        # hint="\$1: \$2: "
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : : NOT_IN_CONDITION : '${file_ext} = png' : ${hint} : return 1"
        cd ${PPWD}
        return 1
    fi

    # echo -e "${GREEN}\$file_name_upath = $file_name_upath${NORMAL}" #print variable
    echo -e "${HLIGHT}--- before: ---${NORMAL}" #start files
    file ${ptr_path}
    ls -hs ${ptr_path}

    echo -e "${HLIGHT}--- mogrify -format jpg ${ptr_path} ---${NORMAL}" #start files
    mogrify -format jpg ${ptr_path}

    local file_name_jpg_upath=$(_prs_f -d ${ptr_path})/$(_prs_f -n ${ptr_path})
    #
    echo -e "${HLIGHT}--- after : ---${NORMAL}" #start files  after
    file ${file_name_jpg_upath}.jpg
    ls -hs ${file_name_jpg_upath}.jpg

    rm ${ptr_path}

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
