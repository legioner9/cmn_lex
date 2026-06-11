#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_0stl_stl0.ram/.grot/gig_fn_0stl_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

gig_fn_0stl_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/gig_fn_0stl_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_0stl_stl0.ram/.grot/gig_fn_0stl_stl0.sh
    local fn_hie_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_0stl_stl0.ram/.grot/gig_fn_0stl_stl0.hie
    local d_name=$(dirname ${fn_sh_file})

    local usr_fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/gig_fn_0stl_stl0
    local opt_fn_data_dir=${d_name}/.opt

    # echo -e "${GREEN}\$usr_fn_data_dir = '$usr_fn_data_dir'${NORMAL}"
    # echo -e "${GREEN}\$opt_fn_data_dir = '$opt_fn_data_dir'${NORMAL}"

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    local hint="hint -> "
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 
TAGS:
ARGS: [\$1] 
[, \$N last arg DEBAG CNTL]
    if '_i' debag action, use: [ \$di -eq 1 ] && {debag action} ]
GLAR: ${FNN}_glar_[name_glar]=[val_glar]    
CNTL: 
    _go         : _edit body        : _edit file://${d_name}/${FNN}.sh
    _tst        : . exec.tst        : . file://${d_name}/_tst/exec.tst
    _tst_e      : _edit tst_dir     : _edit file://${d_name}/_tst
    _flow_1     : . _flow_tst.sh.v1 : . file://${d_name}/_tst/_flow_tst.sh.v1

    _hie_m      : more hie_file     : more file://${hie_file} 
    _hie_e      : _edit hie_file    : _edit file://${hie_file} 

    _usr_d_e    : user data : use by ${FNN} : _edit usr_fn_data_dir : _edit file://${usr_fn_data_dir}
    _opt_d_e    : opt data : use by user : _edit opt_fn_data_dir : _edit file://${opt_fn_data_dir}    
    
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( if ... return 0 | if ... return 1 )
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

    if [[ "_usr_d_e" == "$1" ]]; then
        _edit ${usr_fn_data_dir}
        return 0
    fi

    if [[ "_opt_d_e" == "$1" ]]; then
        _edit ${opt_fn_data_dir}
        return 0
    fi

    if [[ "_flow_1" == "$1" ]]; then
        if ! _source_w1_isf ${d_name}/_tst/_flow_tst.sh.v1; then
            _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_source_w1_isf ${d_name}/_tst/_flow_tst.sh.v1' : ${hint} : return 1"
            cd $PPWD
            return 1
        fi
    fi

    # if [[ "_flow_2" == "$1" ]]; then
    #     if ! _source_w1_isf ${d_name}/_tst/_flow_tst.sh.v2; then
    #         _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_source_w1_isf ${d_name}/_tst/_flow_tst.sh.v2' : ${hint} : return 1"
    #         cd $PPWD
    #         return 1
    #     fi
    # fi

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

    hint="\$1: \$2: "
    if _isn_from ${NARGS} 1 2 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1 2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    local di=
    if [ -n "$N" ]; then
        if [ "$N" == "_i" ]; then
            di=1
        else
            di=0
        fi
    else
        di=0
    fi

    #[[ptr_path]]
    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(_abs_path "${PPWD}" "ptr_path")"

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3
    # tml {{PPWD}}
    # path2nom2d_stl0 :: path2nom_stl0 for all files (with prev) in dir $1
    # path2nom_stl0 :: _s2f ${PATH} '${REPO_PATH}' $1 : ST_RC_D_PATH, ST_RC_D_DATA_PATH, ST_RC_DATA_PATH, REPO_PATH, HOME
    # _s2d "$HOME/"" '/' $dir - that only for .md path (before normalize path)

    #* [ $di -eq 1 ] && echo "info"

    #* standart echo fl
    # _st_exit "in fs= file://${} , line=${LINENO}, EXEC: ${FNN} $* : 'SIGN_STR' (\$N) : 'file://${}' : ${hint} : return 1"
    # cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 0|1" >&2
    # return 1

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    gig_fn_0stl_stl0_before_return() {
        :
    }

    #* define local variables

    #? ----- START gig_fn_0stl body_flow -----

    #* {{fn_sh_body}}

    #* ${sublib_name}: [num_level]stl
    local sublib_name="0stl"

    local lib_dir=${REPO_PATH}/stl/.d/.stl.lib.d/lib.${sublib_name}.arb

    if command -v ${1}_${sublib_name}; then
        hint="\$1: name create ${1}_${sublib_name}"
        _st_err "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_TRUE : 'command -v $1_${sublib_name}' : ${hint} : return 1" >&2
        return 1
    fi

    # _sd2d _XXX $1 ${ST_RC_D_PATH}/.d/.arb/stl0.arb/_XXX_stl0.ram
    #  _sd2d _XXX $1 ${ST_RC_D_PATH}/.d/.arb/smp0.arb

    # cp ${HOME}/.d/.rpn.ax.d/tml.ax.d/.hie/stl0/XXX/tml.hie ${fn_data_dir}/_XXX_stl0.ram/.grot/_XXX_stl0.hie

    # _s2f _XXX _XXX_${sublib_name} ${fn_data_dir}/_XXX_stl0.ram/.grot/_XXX_stl0.hie
    _sdd2d _XXX_YYY ${1}_${sublib_name} ${lib_dir}/_XXX_YYY.ram ${lib_dir}

    # _st_info "NOT edit file://${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/XXX_stl0 THAT COPY OF file://${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX"

    # ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d
    # echo -e "${HLIGHT}--- cp -r ${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX/. ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/_XXX.d ---${NORMAL}" #start files
    # cp -r ${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX/. ${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/XXX_stl0

    # if ! _sd2d XXX $1 ${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/XXX_stl0; then

    #     echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_sd2d _XXX $1 ${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/XXX_stl0' : ${hint} : return 1" >&2
    #     return 1

    # fi

    #? ----- END gig_fn_0stl body -----

    gig_fn_0stl_stl0_before_return
    cd ${PPWD}
    return 0
}

cd "${idir}"
unset filename
#{post_fn}
