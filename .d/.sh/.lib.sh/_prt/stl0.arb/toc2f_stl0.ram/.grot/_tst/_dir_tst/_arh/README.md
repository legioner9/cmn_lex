
<!-- [[__TOC_]] -->

<a name=top></a>
<a class=top-link hide href=#top>↑</a>

Start Contents Menu

<!-- TOC tocDepth:1..6 chapterDepth:1..6 -->

- [Да здравствует Марк tshemsedinov](#да-здравствует-марк-tshemsedinov)
  - [Благодарность](#благодарность)
- [Явление миру](#явление-миру)
  - [Шаги по камням](#шаги-по-камням)
- [Фон](#фон)
  - [Культурологический контекст](#культурологический-контекст)
  - [Огонь внутри](#огонь-внутри)
- [Что я могу сделать](#что-я-могу-сделать)
- [Библиотека камней - Теория](#библиотека-камней---теория)
  - [Словарь](#словарь)
  - [Рекомендации RCM](#рекомендации-rcm)
  - [Что это](#что-это)
  - [Ограничения](#ограничения)
    - [Ограничение сложности stl](#ограничение-сложности-stl)
    - [Требования к fn\_elem](#требования-к-fn_elem)
    - [Требования к os\_sl](#требования-к-os_sl)
    - [Тестируемость](#тестируемость)
    - [Расширяемость](#расширяемость)
    - [Производительность](#производительность)
  - [Типы и поведение](#типы-и-поведение)
- [Библиотека камней - Практика](#библиотека-камней---практика)
  - [Понижение абстракций](#понижение-абстракций)
    - [Базовые принципы](#базовые-принципы)
    - [Базовые технологии](#базовые-технологии)
- [Что здесь есть](#что-здесь-есть)
    - [Библиотека STL](#библиотека-stl)
      - [Поведение библиотеки STL](#поведение-библиотеки-stl)
        - [Правила именования функций](#правила-именования-функций)
        - [Подсказки в именовании файлов или директорий](#подсказки-в-именовании-файлов-или-директорий)
        - [Подсказки в расширениях файлов - wellknown - `wnext`](#подсказки-в-расширениях-файлов---wellknown---wnext)
    - [Функция библиотеки STL](#функция-библиотеки-stl)
      - [Поведение функции STL](#поведение-функции-stl)
  - [Состав библиотеки STL](#состав-библиотеки-stl)
      - [Все функции STL (local)](#все-функции-stl-local)
      - [Все функции STL (git)](#все-функции-stl-git)
  - [Библиотека STL0](#библиотека-stl0)
    - [Поведение библиотеки STL0](#поведение-библиотеки-stl0)
  - [Функция библиотеки STL0](#функция-библиотеки-stl0)
    - [Поведение функции STL0](#поведение-функции-stl0)
  - [LCU](#lcu)
    - [Что это](#что-это-1)
    - [naming](#naming)
    - [add to flcu](#add-to-flcu)
        - [search among flcu](#search-among-flcu)
  - [Unsort](#unsort)
      - [Select (меню выбора) в параметре функции](#select-меню-выбора-в-параметре-функции)
      - [UPG stl\_fn](#upg-stl_fn)
- [Install STL \[and STL0\]](#install-stl-and-stl0)
  - [restore STL from .d.zip](#restore-stl-from-dzip)
- [Неупорядоченные заметки](#неупорядоченные-заметки)

<!-- /TOC -->

End Contents Menu

<!--
CMND: ufl_stl0 4 /REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt /REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.prc/README.md

PPWD: /REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.prc

FLOW: /REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731214304_10112024115144

DATX: 1731214304
-->


[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/001.01.ave_marcus.d/001.pref.txt.md)



# Да здравствует Марк tshemsedinov

Ave Marcus tshemsedinov* (лат.)

*) Cuius fides est lux (лат.)

    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/001.01.ave_marcus.d/002.gratia.d/001.pref.txt.md)



## Благодарность

Gratia (лат.)

- vitlav
- larchanka
- a3rus
    

[001.pef.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.01.manifesto.d/001.pef.txt.md)



# Явление миру 

Manifesto

Библиотеки stlu это инструмент создаваемый пользователем для создания автоматизации пользовательских задач.

[001.pef.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.01.manifesto.d/002.gradus_in_saxa.d/001.pef.txt.md)



## Шаги по камням

Gradus in saxa (лат.)
   

[001.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.01.manifesto.d/002.gradus_in_saxa.d/002.d/001.txt.md)




- Следует использовать только доверенный код, который понятен и тестировал сам, а так же операционную систему
- Следует знать как используется недоверенный код    
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.02.sfondo.d/001.pref.txt.md)



# Фон 

Sfondo (лат.)  

Понимание поступков иногда кроется в том как человек видит реальность и в том что его терзает 
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.02.sfondo.d/002.contextus_culturalis.d/001.pref.txt.md)



## Культурологический контекст

Contextus culturalis (лат.)

Эпоха Виндовс характеризуемая тонким юзером, довольствующимся графическим интерфейсом с кнопками, созданным глобальными корпорациями, подходит к концу. Графические итерфейсы истощили под собой все имеющиеся в распоряжнении человечества вычислительные мощности в погоне за призрачным удовлетворения пользователя, при этом нарастающая сложность информационных систем усугубляется падающей квалификацией программистов пытающихся их (системы) поддерживать (спасать). Если умножить это пониманием того, что корпорации строились на диктате гегемона над всеми остальными - и диктату этому пришел конец - то вопрос таков - что будем выращивать на руинах?

Предварительно Линукс, характеризуемый толстым юзером, знающим что делает, и тонкими программистами, представляющимися служителями операционной системы (области высоких абстракций пока еще катастрофически сложных программ (броузеры, и т.п.) мы пока не рассмариваем).

Все дальнейшее будет посвящено помощи юзерам, желающим стать все толще и толще, и будет исходить из того, что 
большинство пользовательской автоматизации может и должно быть написано самим пользователем и использоваться только в командной строке. 




[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/002.02.sfondo.d/003.fuoco_dentro.d/001.pref.txt.md)



## Огонь внутри

Fuoco dentro (лат.)

- написать код просто - не потерять его вообще возможно?
- баланса между системным и прикладным кодом не существует? 
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/003.quid_possum_facere.d/001.pref.txt.md)



# Что я могу сделать

Quid possum facere (лат.)


[001.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/003.quid_possum_facere.d/002.d/001.txt.md)




- Демонстрация возможностей stlu
    - данный README.md динамически создается из директории /.d/.mul/rbld_readme.mul/.cnt
      - локальная версия README.md /.d/.mul/rbld_readme.mul/.prc/README.md
    - много локальных репозиториев push в много удаленных репозиториев ( как локальных так и в сети ) \{push many to many}
    - перед git add проверить что нет больших файлов (>50Mb) \{flow hook}
    - сделать .md файл используя файлы из директории - вставить картинки и т.п. \{file generate}
    - сделать локальную базу знаний на файлах с поиском по тегам и каталогом .md файл \{knowledge base}
    - сделать унифицированые по поведнию и удобные в испльзовании юзером обертки над стандартными утилитами os \{user wrapper}
    - обеспечить бэкап с последующим восстановлением файлов и настроек программ \{bcp dpl}
    - вставка сниппетов в код \{insert snippet}
 
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/001.pref.txt.md)



# Библиотека камней - Теория

Bibliotheca Lapidum - Theoria (лат.)
    


[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/001.pref.txt.md)



## Словарь

Lexicon (лат.)

    stl                 - библиотека первого уровня абстракции от опрационной системы
    stlu                - библиотека из древа с корнем stl

    fn_stl              - функция библиотеки stl
    fn_stlu             - функция библиотеки stlu
    fn_name             - имя функции
    fn_file             - имя файла в котором определена функция
    fn_dir              - путь к директории содержащей fn_file и служебные файлы к нему
    
    os                  - операционная система
    os_cl               - основной компилируемый язык операционной системы 
    os_sl               - основной скриптовый язык операционной системы 
    fn_elem             - элементарная функция написаная на os_cl вызываемая os_sl с аргументами и по имени 

    upath               - тип указания пути файловой системы
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/002.lexicon.d/002.d/001.pref.txt.md)



## [Рекомендации RCM](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.ins_dr/001.rcm.d/res.md)

  

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/003.quid_est.d/001.pref.txt.md)



## Что это

Quid est (лат.)

- stl
  - Состоит только из доверенного кода
  - Определяется только для контекста юзера
  - Состоит из функций написаных на os_sl и оперирующих утилитами используемыми в os
  - Последующее за stl древо библиотек - stlu
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/004.limitations.d/001.pref.txt.md)



## Ограничения

Limitations (лат.)

### Ограничение сложности stl

- stl состоит из fn_elem 
- stlu использует предыдущие вплоть до stl
- функции библиотек имеют ограничение на количество строк
 
### Требования к fn_elem

- Написаны на базовом языке операционной системы
  
### Требования к os_sl

- Понятен и прост для юзера
- Период версионных изменений близок к периоду базового языка операционной системы

### Тестируемость 

- stl тестируется безусловно полностью при каждом запуске оболочки
- stlu тестируется по возможности

### Расширяемость

- по набору функций в библиотеке
- по написанию библиотеки следующего уровня абстракции

### Производительность

- Читабельность и простота для юзера будет происходить за счет уменьшения производительности
- Юзер пишет код сам - производительность его ответственность
- Управляемость автоматизации рутинных действий для юзера ценнее производительности
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/004.bibliotheca_lapidum_theoria.d/005.genera_at_mores.d/001.pref.txt.md)



## Типы и поведение

Genera et mores (лат.)



- Типы
  - Гитхуки в репозитории
    - файлы процедур и данных вызываемые функциями обертками над git
  - Арбструктуры
    - Структуры поддерикторий предназначенные для поиска по тегам и строке основного содержания
  - upath 
    - строка являющаяся '@', относительным либо абсолютным путем
    
- Поведение
  - информация и ее обработка связаны только через интерфейсы
  - создавать регулярные структуры только генерацией с параметрами - копипаст недоверенная операция 

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/001.pref.txt.md)



# Библиотека камней - Практика

Bibliotheca Lapidum - Usu (лат.)

  

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/001.pref.txt.md)



## Понижение абстракций

Deminutio abstractionis (лат.)


    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/002.basic_principiis.txt.d/001.pref.txt.md)



### Базовые принципы

Basic principiis (лат.)

- stlu : описание поведения и интерфейсов:
  - при возникновении ошибки генерируется stack error который должен содержать:
    - описание восхождения ошибки от системного вызова до пользовательского файла его вызвавшего в виде списка
    - файл в котором сгенерирована ошибка
    - номер строки где произошла ошибка
    - возвращаемый код ошибки
    - краткое описание ошибки 

- fn_stlu : описание поведения и интерфейсов:
  - все файлы с функциями хранятся в однотипных поддиректориях одной директории
  - содержит только одну функцию с именем совпадающем с именем файла без расширений  
  - содержит только логику состоящую в использовании fn_elem, fn_stl и запуска процедур хрнящихся в файлах
    - если логика состоит в обработке вариантов использования однотипных процедур или наборов данных - все процедуры или наборы данных для выбора следует хранить в отдельных директориях    
  - содержит следующие однострочные описательные данные себя самой для текстового поиска начинающиеся с:
    - MAIN:
      - краткое описание работы функции состоящее в упоминании аргументов и действий с их участием
    - TAGS:
      - слова начинающиеся с @ через пробел и фиксирующие ключевые определения 
  - содержит следующие пояснения себя самой начинающиеся с:
    - ARGS: 
      - перечисление всех возможных вариантов наборов аргументов и их значения в функции при стандартном вызове
    - CNTL:
      - перечисление всех возможных специальных аргументов определяющих специальное поведение:
        - [-h] возвращает текст - описывает общее поведение и внутреннее устройство
        - [_go or _e] вызывает в редактор кода тело функции
        - [_tst or _t] вызывает функцию в стандартном тестовом контексте и тестовыми параметрами, возвращает:
          - return 1 : if test NOT PASS
          - return 0 : if test IS PASS
        - [_flow_1] (demo run) вызывает функцию в произвольном пользовательском контексте и произвольными параметрами 
    - EXAM:
      - пример вызова функции
  - аргументы функции
    - если аргумент обязателен и необходимо передать пустое значение - следует указать '@'



[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/005.bibliotheca_lapidum_usu.d/002.deminutio_abstractionis.d/003.basic_technologiae.txt.d/001.pref.txt.md)



### Базовые технологии

Basic technologiae (лат.)

- os    - altlinux  (ALT operating systems Russian software company)
- os_cl - gcc       (the GNU Compiler)
- os_sl - bash      (the GNU Project's shell—the Bourne Again SHell)
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/001.pref.txt.md)



# Что здесь есть

Quid est hic (лат.)


    

[001.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/001.txt.md)



### Библиотека STL

    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/001.pref.txt.md)



#### Поведение библиотеки STL



[002.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/002.txt.md)



##### Правила именования функций

- если [fn_stl] результатом является только возврат 0 или 1 при действии и производится [flow], то именование следующее:

    `_is_[flow]`

  - например определяется ответ `y` или `n` в качестве утверждения, то именование следующее:

    `_is_yes`

- если [fn_stl] n-обертка (в системе уже есть n-1 оберток) над [fn_elem] и производится [w_flow] изменение поведения, то именование следующее:
     
     `_[fn_elem]_wn_[w_flow]`

  - например первая обертка над source состоящая в проверке существования запускаемого файла, то имя следующее:   

    `_source_w1_isf`


    


[003.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/003.txt.md)



##### Подсказки в именовании файлов или директорий

- если в имени файла или директории содержится `.ax.`, то удаление файла или файлов из директории будет иметь негативные последствия - допускается изменение файла или добавление файлов в директорию - иными словами ссылки на эти сущности используются в STL 

    

[004.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.01.d/002.d/002.d/004.txt.md)



##### Подсказки в расширениях файлов - wellknown - `wnext`
- `wnext`
  - `.lst` список
  - `.prc` файл с процедурой
  - `.cnt` контекст
  - `.env` окружение
  - `.hie` пояснение по смыслу - формат .md
  - `.tml` текстовый макет
  - `.man` общие пояснения - формат .md
  - `.tst` тестовый


  - `.ham` хук в обертках над git
  - `.mul` директория содержащая `wnext` директории 

  - `.sil` структура "лес"
  - `.arb` структура "дерево"
  - `.ram` структура "ветка"
  - `.fol` файл "лист"
  - `.grot` структура "дупло" - "кроличья нора"
  - `.repo` структура "коробка"
  
  - `.exa` пример
  - `.anc` файл с сылками
  


    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.02.d/001.pref.txt.md)



### Функция библиотеки STL
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.02.d/002.d/001.pref.txt.md)



#### Поведение функции STL
    

[002.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.02.d/002.d/002.txt.md)




`${ST_RC_D_PATH}` - путь к git директории проекта STL

`${ST_RC_D_DATA_PATH}` - путь к git директории с пользовательскими данными проекта STL

.hie - `${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/[name_fn].hie` текстовый файл - Объяснение смысла и конкретные пояснения для сущности [name_fn]


.deb1 - `${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/[name_fn].tst.d./[name_fn].tst.sh.deb1` - Файл при запуске запускает функцию в deb1 контексте и параметрами для выяснения различных аспектов поведения

Допускается создание .deb2 .deb3 и т.д. (добавить по аналогии: [name_fn].tst.sh.deb2 и доп секцию if для cntl параметров )

[name_fn].tst.d - `${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/[name_fn].tst.d` - Директория  определяет основной тест функции, состав этой директории:
- файл _XXX.tst.sh при запуске формирует текстовый файл res при необходимости им используется:
  - tst.d директория для хранения промежуточных файлов генерируемых или используемых [name_fn]
  - .lst список имен переменных 
  - pre текстовый файл - предопределяемый образец
- дале возвращается результат `diff res pre` с соответствующим стеком

.data `${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/[name_fn].d` - пользовательские данные для name_fn, состав этой директории:
- .prc процедуры
- .lst списки
- .tml шаблоны
    

[001.03.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/001.03.pref.txt.md)



## Состав библиотеки STL

#### [Все функции STL (local)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.local.md)
#### [Все функции STL (git)](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/002.files_stl.file.git.md)

[001.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/003.d/001.txt.md)



## Библиотека STL0

    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/003.d/002.d/001.pref.txt.md)



### Поведение библиотеки STL0



[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/004.d/001.pref.txt.md)



## Функция библиотеки STL0
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/004.d/002.d/001.pref.txt.md)



### Поведение функции STL0
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/005.d/001.pref.txt.md)



## LCU
    

[099.upg_fn.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/005.d/099.upg_fn.txt.md)



### Что это
- LCU - обработка файловой системы основаная на соответствии директории и файла __.lcu 
  - характеристики
    - директоря определяет содержание своих поддиректорий
  - возможности обработки fs
    - поиск по тегам
    - поиск по мейн содержимому
  - требования к занесению информации
    - ограниченное whellknown количество тегов
      - добавление тега в файл отлько из уже существующих (alrtag)
      - 
### naming

- секция .lcu loc
  - RNDX locr
  - MAIN locm
  - TAGS loct
    - логика названий 
      - All all
        - locAll loc RNDX and MAIN and TAGS
      - A and
        - locrAm loc RNDX and MAIN
      - O or
        - locrOt loc RNDX or TAGS
- file.lcu == flcu
- env_dirs - pull directory as united for treat LSU == env_lcu
- dir with flcu == dlcu
### add to flcu

- nrdx
- tags
- main

##### search among flcu


    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/099.d/001.pref.txt.md)



## Unsort
    

[002.select.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/099.d/002.select.txt.md)



#### Select (меню выбора) в параметре функции

- Если параметром функции является меню, то
  - 0 означает, что при вызове user сможет в интерактивном меню select выбрать нужный пункт меню - после этого в контекст функции попадет сущность соответствующая этому пункту (путь к выбранному файлу, срока аргументов и т.п.)
  - N сразу указывает на пункт меню 

- `_d2mm` пример выбора файла из директории
    

[003.upg_fn.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/701.quid_est_hic.d/002.d/099.d/003.upg_fn.txt.md)



#### UPG stl_fn

- для upg_[name_fn]:
  - создаем [name_fn]_
  - тестируем на наследование поведения
    - делаем bcp [name_fn] с перемещением файлов
    - заменяем [name_fn]_ на [name_fn] во сех файлах и директориях [name_fn]_ (like _gig_st_rc_fn _XXX -> [name_fn])
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/001.pref.txt.md)



# Install STL [and STL0]
    

[002.install_cli.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/002.install_cli.txt.md)



    ~ $ wget https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/main_install_stl.sh
    ~ $ . main_install_stl.sh

or

    ~ $ wget https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%2Fmain_install_stl.sh
    ~ $ . main_install_stl.sh

[003.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/003.pref.txt.md)



## restore STL from .d.zip
    

[004.restore_dot_d_cli.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/801.install_stl.d/004.restore_dot_d_cli.txt.md)



    $ curl https://raw.githubusercontent.com/legioner9/st_rc_d/refs/heads/master/.d/.install.ax/restore_stl_from_zip.sh | sh

or

    $ curl https://gitflic.ru/project/legioner9/st_rc_d/blob/raw?file=.d%2F.install.ax%restore_stl_from_zip.sh | sh
    

[001.pref.txt.md](/REPOBARE/_repo/st_rc_d/.d/.mul/rbld_readme.mul/.cnt/901.unsort.d/001.pref.txt.md)



# Неупорядоченные заметки

Libero capitulum (лат.)

- ${HOME}/tmp_dir_st_rc временная user директория - очищается при перезапуске оболочки

- файлы стилей для интерпретатора md2html [md_css](/.d/.unzip/.d/.cdn.d/md_css)

- lib2e вывод информации по функциям библиотеки [name_lib]E_[name_lib]
  - st - _stE
  - stl0 - stl0E

- создание пустой функции в библиотеке st _gig_st_rc_fn
- удаление файлов функции из библиотеки st _rm_st_rc_fn
  
- создание пустой функции в библиотеке gig_fn_stl_[name_lib]
- удаление файлов функции из библиотеке rm_fn_stl_[name_lib]
- создание библиотеки cr_lib_fn_stl arg




