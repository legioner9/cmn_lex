#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_stl_stl0.ram/.grot/gig_fn_stl.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

gig_fn_stl_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    # [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    # [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    # local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_stl_stl0.ram/.grot/gig_fn_stl.sh)

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_stl_stl0.ram/.grot/gig_fn_stl_stl0.sh
    local d_name=$(dirname ${fn_sh_file})

    local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/gig_fn_stl_stl0

    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: generate \$1_stl0 function
TAGS:
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTL: 
    _go         : _edit file://${d_name}/${FNN}.sh
    _tst        : . file://${d_name}/_tst/exec.tst
    _tst_e      : _edit file://${d_name}/_tst
    _flow_1     : . file://${d_name}/_tst/_flow_tst.sh.v1
    _data_e     : _edit file://${fn_data_dir}
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( (plt_err | plt_pause | plt_exit) errmes return 1 | ... )
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
            echo "in fs= file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_stl_stl0.ram/.grot/gig_fn_stl.sh , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
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

    if [[ "_tst_e" == "$1" ]]; then
        _edit ${d_name}/_tst
        return 0
    fi

    if [[ "_data_e" == "$1" ]]; then
        _edit ${fn_data_dir}
        return 0
    fi

    if command -v ${1}_stl0; then
        hint="\$1: name create ${1}_stl0"
        _st_err "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_TRUE : 'command -v $1_stl0' : ${hint} : return 1" >&2
        return 1
    fi

    # local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/gig_fn_stl_stl0

    # /home/st/REPOBARE/_repo/st_rc_d/.d/.arb/stl0.arb/gig_fn_stl_stl0.ram/.grot/gig_fn_stl_stl0.hie

    cp ${HOME}/.d/.rpn.ax.d/tml.ax.d/.hie/stl0/XXX/tml.hie ${fn_data_dir}/_XXX_stl0.ram/.grot/_XXX_stl0.hie

    # _sd2d _XXX $1 ${ST_RC_D_PATH}/.d/.arb/stl0.arb/_XXX_stl0.ram
    #  _sd2d _XXX $1 ${ST_RC_D_PATH}/.d/.arb/smp0.arb

    _s2f _XXX _XXX_stl0 ${fn_data_dir}/_XXX_stl0.ram/.grot/_XXX_stl0.hie
    _sdd2d _XXX $1 ${fn_data_dir}/_XXX_stl0.ram ${ST_RC_D_PATH}/.d/.arb/stl0.arb

    _st_info "NOT edit file://${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/XXX_stl0 THAT COPY OF file://${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX"

    # ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d
    echo -e "${HLIGHT}--- cp -r ${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX/. ${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/_XXX.d ---${NORMAL}" #start files
    cp -r ${HOME}/.d/.rpn.ax.d/tml.ax.d/.data/stl/_XXX/. ${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/XXX_stl0

    if ! _sd2d XXX $1 ${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/XXX_stl0; then

        echo "in fs= file://${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/_gig_st_rc_fn.sh , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '_sd2d _XXX $1 ${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/XXX_stl0' : ${hint} : return 1" >&2
        return 1

    fi

}

cd "${idir}"
unset filename
#{post_fn}
