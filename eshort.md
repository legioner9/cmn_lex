    legioner9 :: err shorts :
    context: text interface of function
    entety:
  
    ([casual]|[action])+[entety]+[vis]

    [casual]
        IS_EST - exist
        NT_EST - not exist

    [action]
        IS_DL - be delit
        NT_DL - not be delit

    [entety]
        FL - 
        DR -  

    [vis]
        $ curl https://gitflic.ru/project/legioner9/fns_bsh/blob/raw?file=.d%2F.sh%2Fl.sh

    EXA:
        NT_DL+DR+*{REN} - not delited result parent dir for result dir
        IS_EST+FL+&{REN} - exist file with name result file 

        if exist mast be file -> exist but not file
        IS_EXT[BUT]NT_FL+{IEN} :: [[ -n '$1' ]] && { [[ -f '$1' ]] || {ERROR::NT_FL}}

        exist and file
        IS_EXT[AND]IS_FL+{IEN} :: [[ -n '$1' ]] || {ERROR::NT_EXT} ; [[ -f '$1' ]] || {ERROR::NT_FL}

        dir or file
        IS_EXT && [IS_DIR[OR]IS_FL+{IEN}] :: [[ -n '$1' ]] || {ERROR::NT_EXT} ; [[ -d '$1' && -f '$1' ]]{ERROR::NT_DR[OR]NT_FL} ; [[ -f '$1' ]] || {ERROR::NT_FL}