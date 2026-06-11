#!/bin/bash

cd ${ST_RC_D_PATH}/.d/.arb/stl0.arb || echo "FAIL_EXEC : cd file://${ST_RC_D_PATH}/.d/.arb/stl0.arb" >&2

if [[ -z "$1" ]]; then
    echo "in fs= file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/_cr_fn_from_XXX_arg_name.sh , line=${LINENO} : NOT_DEFINE function name : '\$1' : ${hint} : return 1"
    return 1
fi

if ! _is_yes "DO? create mane_lib0_fn :: $1 in lib0 fs= file://${ST_RC_D_PATH}/.d/.arb/stl0.arb"; then
    return 0
fi

if command -v $1; then
    hint="\$1: name create mane_lib0_fn"
    echo "in fs= file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/_cr_fn_from_XXX_arg_name.sh , line=${LINENO} : : EXEC_TRUE : 'command -v $1' : ${hint} : return 1" >&2
    return 1
fi

if ! _sd2d _XXX $1 _XXX.ram; then
    echo "in fs= file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/_cr_fn_from_XXX_arg_name.sh , line=${LINENO} : : EXEC_FAIL : '_sd2d _XXX $1 _XXX.ram' : ${hint} : return 1" >&2
    return 1
fi

