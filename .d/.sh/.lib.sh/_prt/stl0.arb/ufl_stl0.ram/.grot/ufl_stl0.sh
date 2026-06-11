#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

ufl_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local _ARGS_=("$@") # copy ARGS for passing for reference
    local NARGS=$#
    # local _NARGS_=$# # copy NARGS for passing to main.sh
    local verbose=0
    local hint=
    local estat=

    local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.flow.d
    # ${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.lst/cntx_name_value.lst
    local fn_lst_cntx_file=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.lst/cntx_name_value.lst

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh
    local d_name=$(dirname ${fn_sh_file})

    echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: unite file from tml, value, proc
TAGS:
ARGS: 
\$1 0 or num_menu dir_ptv from ${d_name} 
    if \$1 NOT_DEFINE be CATALOG
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

    local dir_ptv=${fn_data_dir}

    # local arr_ptv=($(_dd2e ${dir_ptv}))

    _E_ufl_stl0() {

        echo -e "${HLIGHT}--- START CATALOG ufl_stl0 ---${NORMAL}" #start files
        local item=
        for item in $(_dd2e ${dir_ptv}); do
            # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
            local e_dir=${dir_ptv}/${item}
            local name_str="${item}"
            local main_str=$(cat ${e_dir}/main.sh | grep MAIN)
            local tags_str=$(cat ${e_dir}/main.sh | grep TAGS)
            local exam_str=$(cat ${e_dir}/main.sh | grep EXAM)

            echo -e "
${BLUE}FILE: file://${e_dir}${NORMAL}
${GREEN}NAME: ${name_str}${NORMAL}
${RED}${main_str}${NORMAL}
${CYAN}${tags_str}${NORMAL}
${CYAN}${exam_str}${NORMAL}
"

        done

        echo -e "${HLIGHT}--- END CATALOG ufl_stl0 ---${NORMAL}" #start files

    }

    [ -z "$1" ] && {
        _E_ufl_stl0
        return 0
    }

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

    if [[ "_flow_1" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/_flow_tst.sh.v1 ]]; then
            . ${d_name}/_tst/_flow_tst.sh.v1
            return 0
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/_flow_tst.sh.v1' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    hint="\$1: 0 or num menu"
    if _isn_from ${NARGS} 1 10 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #* ${fn_data_dir}

    #! clousure for child process
    local gig_command="$FNN ${ARGS[*]} in file://${fn_sh_file}"

    echo -e "${GREEN}\$gig_command = '$gig_command'${NORMAL}"

    # local dir_ptv=${fn_data_dir}

    local arr1_ptv=($(_dd2e ${dir_ptv}))
    local arr2_ptv=($(_dd2e ${dir_ptv}))

    arr1_ptv+=("_edit file://${dir_ptv}")
    arr2_ptv+=("_edit ${dir_ptv}")

    local res_ptv=

    _nr2mm arr1_ptv arr2_ptv res_ptv ${ARGS[0]}

    [ "_edit ${dir_ptv}" == "${res_ptv}" ] && {
        _edit ${dir_ptv}
        return 0
    }

    echo -e "${GREEN}\$res_ptv = $res_ptv${NORMAL}" #print variable

    dir_set=${dir_ptv}/${res_ptv}

    echo -e "${GREEN}\$dir_set = '$dir_set'${NORMAL}" #print variable

    local dir_ins=${dir_set}/.ins
    local dir_prc=${dir_set}/.prc
    local dir_tml=${dir_set}/.tml
    local dir_vlu=${dir_set}/.vlu
    local dir_lst=${dir_set}/.lst
    local dir_lst2=${dir_set}/.lst2
    local dir_rpn=${dir_set}/.rpn
    local dir_cntx=${dir_set}/.cntx

    local file_main=${dir_set}/main.sh

    echo -e "${HLIGHT}--- . ${file_main} ---${NORMAL}" #start files

    . ${file_main} || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '. file://${file_main}' : return 1"
        return 1
    }

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
