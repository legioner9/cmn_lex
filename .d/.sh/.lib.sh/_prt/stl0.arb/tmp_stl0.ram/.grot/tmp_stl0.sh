 #!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/tmp_stl0.ram/.grot/tmp_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

tmp_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/tmp_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/tmp_stl0.ram/.grot/tmp_stl0.sh
    local fn_hie_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/tmp_stl0.ram/.grot/tmp_stl0.hie
    local d_name=$(dirname ${fn_sh_file})

    local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/tmp_stl0

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 
TAGS:
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTL: 
    _go         : _edit body        : _edit file://${d_name}/${FNN}.sh
    _tst        : . exec.tst        : . file://${d_name}/_tst/exec.tst
    _tst_e      : _edit tst_dir     : _edit file://${d_name}/_tst
    _flow_1     : . _flow_tst.sh.v1 : . file://${d_name}/_tst/_flow_tst.sh.v1
    _data_e     : _edit fn_data_dir : _edit file://${fn_data_dir}
    _hie_m      : more hie_file     : more file://${hie_file} 
    _hie_e      : _edit hie_file    : _edit file://${hie_file} 
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
        if ! _source_w1_isf ${d_name}/_tst/exec.tst; then
            _st_exit "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_source_w1_isf ${d_name}/_tst/exec.tst' : ${hint} : return 1"
            cd $PPWD
            return 1
        fi
    fi

    if [[ "_tst_e" == "$1" ]]; then
        _edit ${d_name}/_tst
        return 0
    fi

    if [[ "_data_e" == "$1" ]]; then
        _edit ${fn_data_dir}
        return 0
    fi

    if [[ "_flow_1" == "$1" ]]; then
        if ! _source_w1_isf ${d_name}/_tst/_flow_tst.sh.v1; then
            _st_exit "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_source_w1_isf ${d_name}/_tst/_flow_tst.sh.v1' : ${hint} : return 1"
            cd $PPWD
            return 1
        fi
    fi

    if [[ "_hie_m" == "$1" ]]; then
        more ${fn_hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_e" == "$1" ]]; then
        _edit ${fn_hie_file}
        cd $PPWD
        return 0
    fi

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #[[ptr_path]]
    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(_abs_path "${PPWD}" "ptr_path")"

    # local dir_fn_data=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/tmp_stl0
    # echo -e "${GREEN}\$dir_fn_data = file://$dir_fn_data${NORMAL}"

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
