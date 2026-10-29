    legioner9 :: big shorts :
    context: text interface of function
    entety:
    IEN     - init entity
    REN     - result entity
    FL      - file
    DR      - directory
    FN      - FL with function
    PR      - FL with procedure, self exec
    FLS     - set of FL
    AFLS    - assoc FLS with ...
    GIR     - giger - generator FLS
    G_FN    - GIR FN
    G_PR    - GIR PR
    G_FN_DR - G_FN and his AFLS 
    G_PR_DR - G_PR and his AFLS
    
    G[FN_DR+PR_DR(as .tst)] - usually .fnsh
    G[PR_DR+PR_DR(as .tst)] - usually .prsh

    entety's str:
    "XXX"
        - "XXX:0:1" substr as ${XXX:0:1}

    entety's path: 
    {XXX}   - full path to XXX
    {XXX}^{YYY} - rel path to XXX outoff YYY
    ^^{XXX} - root DR for XXX
    *{XXX}  - dirname XXX
    &{XXX}  - basename XXX
    {XXX^}  - without first XXX.ext
    {XXX^^} - without first and second XXX.ext1.ext2
    {^XXX}  - without first prext.XXX
    {^^XXX} - without first and second prext1.prext2.XXX

    ST_DSL:
        ground entity:
            EN - entity of file system (now [(f|d)] )
        first level entity :
            IEN - init entity
            REN - result entity
        operators betwieen:
            = - identity values
            is - identity content
            == - sameness by definition
        operators with path:
            {e} - get path from entity e
            {{e}} - define entity from path
            {&e} - get NM entity (basename {})
            {*e} - get parent DR entity (dirname {})
                {e} == {*e}/{&e}
            {e^} - discard postfix .ext (l_01_prs_f -n {})
            {e^^} - discard postfix ext1.ext (l_01_prs_f -n2 {})
            e> - cat {e}
        organize syntax:
            [] - semantic isolation
        bash syntax:
            / - subdir 
            . - dot in name
            [ifques] = [if l_01_is_yes]
            [thn] = [then]
            <procedure arg> = [do procedure with arg]
            
        BELONG_DR [bldr]:
            [{>e} = {*e}/_{&e}.d] == [>e is {{{*e}/_{&e}.d}}]            
            LOG_FL [bllg]:
                {>e:lg} = {>e}/{&e}.lg.f
            LOG_FL [blex]:
                {>e:ex} = {>e}/{&e}.ex.f
        BELONG_BCP [bbcp]:
                {e~} = {>e}/{&e}~

    ADD_ST_DSL:
        ADD_ST_DSL:KEY
            DO_RM_IEN - ques rm IEN
        ADD_ST_DSL:FN
            err1(){echo err_str; return 1}


    realization:
    l_01_prs_f :: pars $1 path - stdout part
	path=/the/path/_foo.bar.ext.txt      
	$(l_01_prs_f -d /the/path/_foo.bar.ext.txt)   : /the/path 
	$(l_01_prs_f -ne /the/path/_foo.bar.ext.txt)  : _foo.bar.ext.txt   
	$(l_01_prs_f -n /the/path/_foo.bar.ext.txt)   : _foo.bar.ext   
	$(l_01_prs_f -n2 /the/path/_foo.bar.ext.txt)  : _foo.bar   
	$(l_01_prs_f -e /the/path/_foo.bar.ext.txt)   : txt   
	$(l_01_prs_f -e2 /the/path/_foo.bar.ext.txt)  : ext 
	$(l_01_prs_f -pr /the/path/_foo.bar.ext.txt)  : _   
	$(l_01_prs_f -po /the/path/_foo.bar.ext.txt)  : foo.bar.ext.txt 
        in:
    $ curl https://gitflic.ru/project/legioner9/fns_bsh/blob/raw?file=.d%2F.sh%2Fl.sh
