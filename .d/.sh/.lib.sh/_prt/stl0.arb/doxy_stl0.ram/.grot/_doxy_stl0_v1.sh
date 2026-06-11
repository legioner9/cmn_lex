#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/doxy_stl0.ram/.grot/doxy_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

doxy_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0

    local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/doxy_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/doxy_stl0.ram/.grot/doxy_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/doxy_stl0.ram/.grot/doxy_stl0.sh)

    echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: doxygen \$1 dir_with_ossa \$2 dir_with_doxy \$3 num menu or 0 dir with stand_conf
TAGS:
ARGS: 
\$1 dir_with_ossa 
\$2 dir_with_doxy
\$3 num menu or 0
\$4 file_stdin_extend_conf
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

    hint="\$1 dir_with_ossa, \$2 dir_with_doxy, \$3 num menu or 0"
    if _isn_from ${NARGS} 3 3 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '3' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    dir_doxy_file_sh=${fn_data_dir}/doxy.file.sh.d

    if ! [[ -d ${dir_doxy_file_sh} ]]; then
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${dir_doxy_file_sh}' : hint : dir with data for ${FNN}() : return 1"
        return 1
    fi

    #! ptr_path
    local dir_with_ossa="${ARGS[0]}"
    echo -e "${GREEN}\$dir_with_ossa = $dir_with_ossa${NORMAL}" #print variable

    if ! _abs_path "${PPWD}" dir_with_ossa; then
        echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_abs_path ${PPWD} dir_with_ossa' : ${hint} : return 1" >&2
        return 1
    fi

    dir_with_ossa="$(_abs_path "${PPWD}" "dir_with_ossa")"
    #[[ptr_path_s]]

    #! ptr_path
    local dir_with_doxy="${ARGS[1]}"
    echo -e "${GREEN}\$dir_with_doxy = $dir_with_doxy${NORMAL}" #print variable

    if ! _abs_path "${PPWD}" dir_with_doxy; then
        echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_abs_path ${PPWD} dir_with_doxy' : ${hint} : return 1" >&2
        return 1
    fi

    dir_with_doxy="$(_abs_path "${PPWD}" "dir_with_doxy")"
    #[[ptr_path_s]]

    if _isn_od ${ARGS[2]}; then
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : NOT_NUMBER : \${ARGS[2]} = '${ARGS[2]}' : ${hint} : return 1"
        return 1
    fi

    #* --- START _nr2mm_min ---
    local _arr_name=()
    local arr_result=()
    local _result=
    local item=

    _arr_name=($(_dd2e ${dir_doxy_file_sh}))

    _parr3e _arr_name

    for item in $(_dd2e ${dir_doxy_file_sh}); do
        arr_result+=("${dir_doxy_file_sh}/${item}")
    done

    _parr3e arr_result

    # arr_result=($(GEN_RESULT))

    echo -e "
${RED}--- parr2mm_ message :${BLUE}
GENERATOR_INFO :
name   from :: \$(_dd2e file://${dir_doxy_file_sh})
result from :: name -> full path
${RED}---${NORMAL}"

    if ! _nr2mm _arr_name arr_result _result ${ARGS[2]}; then
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_arr_name arr_result _result ${ARGS[2]}' : ${hint} : return 1"
        return 1
    fi

    echo -e "${GREEN}\$_result = $_result${NORMAL}" #print variable

    dir_with_data=${_result}

    # ${dir_with_ossa}
    # ${dir_with_doxy}
    # ${dir_with_data}

    if ! [[ -f ${dir_with_doxy}/conf/doxy.diss ]]; then

        [[ -d ${dir_with_doxy} ]] || mkdir ${dir_with_doxy}
        [[ -d ${dir_with_doxy}/conf ]] || mkdir ${dir_with_doxy}/conf

        cp ${dir_with_data}/doxy.diss ${dir_with_doxy}/conf/doxy.diss

    fi

    echo -e "${HLIGHT}--- exec: . ${dir_with_data}/doxy.sh ---${NORMAL}" #start files

    . ${dir_with_data}/doxy.sh || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '. ${dir_with_data}/doxy.sh' : return 1"
        return 1
    }

    echo -e "${HLIGHT}--- exec: . ${dir_with_doxy}/conf/doxy.diss ---${NORMAL}" #start files

    . ${dir_with_doxy}/conf/doxy.diss || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '. ${dir_with_doxy}/conf/doxy.diss' : return 1"
        return 1
    }

    cd ${dir_with_doxy} || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${dir_with_doxy}' : return 1"
        return 1
    }

    export INPUT="${dir_with_ossa}"

    echo -e "${HLIGHT}--- exec: doxygen ${dir_with_data}/doxy.file ---${NORMAL}" #start files

    doxygen ${dir_with_data}/doxy.file || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'doxygen ${dir_with_data}/doxy.file' : return 1"
        return 1
    }

    #* --- END _nr2mm_min ---
    #[[nr2mm_min]]

}

cd "${idir}"
unset filename
#{post_fn}
