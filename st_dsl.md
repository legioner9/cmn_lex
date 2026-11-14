    legioner9 :: DSL

    ST_DSL:
        ground entity:
            EN - entity of file system (now [(f|d)] )

        first level entity :
            IEN - init entity
            REN - result entity

        filesystem entity :
            FL   - file
            DR   - directory
            FN   - FL with function
            PR   - FL with procedure, self exec
            FLS  - set of any FL
            AFLS - assoc FLS with ...
            AFN  - assoc FLS with FN
            APR  - assoc FLS with PR

        filesystem operators :
            GIR     - giger - generator FLS
            G_FN    - GIR FN
            G_PR    - GIR PR
            G_FN_DR - G_FN and his AFLS 
            G_PR_DR - G_PR and his AFLS

        filesystem processes sintax:
            () - process
                (GIR) - result of the GIRs operation

        operators betwieen:
            = - identity values
            is - identity content
            == - sameness by definition

        operators over paths:
            {e} - get path from entity e
            {{e}} - define entity from path
            {&e} - get NM entity (basename {})
            {*e} - get parent DR entity (dirname {})
                {e} == {*e}/{&e}
            {e^} - discard postfix .ext (l_01_prs_f -n {})
            {e^^} - discard postfix ext1.ext (l_01_prs_f -n2 {})
            e> - cat {e}

        compound operators:
             template point 
                 - is: 
                 - name: 
                 - define: 
                 - proc:

            {>e} - is: dir to which a {e} belong
                 - name: [bldr]
                 - define: [{>e} = {*e}/_{&e}.d] == [>e is {{{*e}/_{&e}.d}}]

        {>e:lg}  - is: log file belonging to {e}
                 - name: [bllg]
                 - define: {>e:lg} = {>e}/{&e}.lg.f

        {>e:ex}  - is: exec file belonging to {e}
                 - name: [blex]
                 - define: {>e:ex} = {>e}/{&e}.ex.f

        (-{e})   - is: {e} releas process
                 - name: [rme]
                 - define: (-{e}) = not exist
                 - proc: ifexst {e~} thn rm {e~}

        {e~}     - is: {e} backup
                 - name: [bbcp]
                 - define: {e~} = {>e}/{&e}~
                 - proc:  (-{e~}) ; cp {e} {e~}

    \"s:m:n\"    - is: substring [m,n] chars
                 - name: [sstr]
                 - define: exa "s:0:1" substr as ${s:0:1}
                 - proc: exa ${s:0:1}

        "f:ln"   - is: (fl|stdin) line 
                 - name: [fln]
                 - define: sh'string\n'
                 - proc: IFS= read -r line < ${fl:-/dev/stdin}

        (mk{e})  - is: (mkdir|touch) (dr|fl)
                 - name: [mk]
                 - define: 
                 - proc:

      (ifq-err)  - is: if ques [yes - (-{e})] or [no - (err1)]
                 - name: 
                 - define: 
                 - proc:

        standart subprocesses :

                 - is: 
                 - proc:

         (ret1)  - is: reurn error
                 - proc: err1(){echo err_str; return 1}

        organize syntax:
            [] - semantic isolation

        bash syntax:
            / - subdir sh'/' 
            . - dot in name
            [ifques] = sh'if l_01_is_yes'
            [ifexst] = sh'if [[(-f|-d) ...]]' 
            [thn] = sh'then'
            <procedure arg> = [do procedure with arg]
                - <ls {e}>
            [[fbl'N']]'NM' == fns_bsh_00'N'_'NM'
                - [[fbl4]]bbcp_rm as fns_bsh_004_bbcp_rm
        sed exchange (in doing section hlp):
            .dol. - $
            .u. - '
            .d. - "

examples ST_DSL realization : [EXA_ST_DSL](https://gitflic.ru/project/legioner9/fns_bsh/blob/raw?file=TODO.md)

    parser of path:
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
see type : [st_llib](https://gitflic.ru/project/legioner9/fns_bsh/blob/raw?file=.d%2F.sh%2Fl.sh)

#@ define ST_DSL
