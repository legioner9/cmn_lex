    legioner9 :: big shorts :
    context: text interface of function
    entety:
    IEN     - init entety
    REN     - result entety
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
