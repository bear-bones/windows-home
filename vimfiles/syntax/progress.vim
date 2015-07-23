" Vim syntax file
" Language:             Progress 4GL
" Filename extensions:  *.p (collides with Pascal),
"                       *.i (collides with assembler)
" Maintainer:           James White <jwhite@ccccorp.com>
" Last Change:          Wed Apr 12 08:55:35 EST 2006

setlocal iskeyword=@,48-57,_,-,!,#,$,%
syn case ignore
syn sync lines=800



" classify all the terms in the file

" oop
syn keyword ProgressOOP class get method private property protected public set static 

" reserved words
syn keyword ProgressReserved    accum[ulate] active-window add alias all alter ambig[uous] analyz[e] any apply as asc[ending] assign at attr[-space]
syn keyword ProgressReserved    authorization auto-ret[urn] avail[able] back[ground] before-h[ide] bell between blank break btos by call
syn keyword ProgressReserved    center[ed] character check chr clear clipboard col colon color col[umn] column-lab[el] col[umns] compiler connected control count-of
syn keyword ProgressReserved    cpstream create ctos current current-changed current-lang[uage] current-window current_date curs[or] data-relation database dataservers dataset
syn keyword ProgressReserved    dbcodepage dbcollation dbname dbrest[rictions] dbtaskid dbtype dbvers[ion] dde deblank debug-list debugger decimal decimals declare
syn keyword ProgressReserved    def default default-noxl[ate] default-window def[ine] delete delimiter desc[ending] dict[ionary] disable discon[nect] disp
syn keyword ProgressReserved    disp[lay] distinct do dos down drop editing else enable encode error-stat[us] escape etime except exclusive
syn keyword ProgressReserved    exclusive[-lock] exclusive-web-us[er] exists export extent fetch field field[s] file-info[rmation] fill find find-case-sensitive
syn keyword ProgressReserved    find-global find-next-occurrence find-prev-occurrence find-select find-wrap-around first-of focus font form form[at] forward
syn keyword ProgressReserved    fram[e] frame-col frame-db frame-down frame-field frame-file frame-inde[x] frame-line frame-name frame-row frame-val[ue]
syn keyword ProgressReserved    from from-c[hars] from-p[ixels] function gateway[s] get get-byte get-codepage[s] get-coll[ations] get-key-val[ue] getbyte global go-on
syn keyword ProgressReserved    go-pend[ing] grant graphic-e[dge] group having header help hide import in init[ial] index indicator input input-o[utput] insert
syn keyword ProgressReserved    integer into is is-attr[-space] join kblabel key-code key-func[tion] key-label keycode keyfunc[tion] keylabel keys keyword label
syn keyword ProgressReserved    last-even[t] last-key last-of lastkey ldbname leave library like line-count[er] listi[ng] locked lookup machine-class
syn keyword ProgressReserved    map member message message-lines mouse mpe nested new next-prompt no-attr[-space] no-error no-f[ill] no-help no-hide no-label[s]
syn keyword ProgressReserved    no-lock no-map no-mes[sage] no-pause no-prefe[tch] no-undo no-val[idate] no-wait null num-ali[ases] num-dbs
syn keyword ProgressReserved    of off old on open opsys option os-append os-command os-copy os-create-dir os-delete os-dir os-drive[s] os-error os-rename
syn keyword ProgressReserved    os2 os400 otherwise output overlay page page-bot[tom] page-num[ber] page-top param[eter] pause pdbname persist[ent] pixels
syn keyword ProgressReserved    preproc[ess] privileges proc-ha[ndle] proc-st[atus] process program-name Progress prompt prompt[-for] promsgs propath provers[ion]
syn keyword ProgressReserved    put put-byte put-key-val[ue] putbyte query query-tuning quit r-index rcode-informatio[n] readkey record-len[gth] rect[angle]
syn keyword ProgressReserved    relation-fields release repeat reposition retain retry return-val[ue] revert revoke run save schema screen screen-io screen-lines
syn keyword ProgressReserved    scroll sdbname search seek select self server session set setuser[id] share[-lock] shared show-stat[s] skip some space status stream
syn keyword ProgressReserved    stream-io string-xref system-dialog table temp-table term term[inal] text text-cursor text-seg[-growth] then this-procedure time title
syn keyword ProgressReserved    today top-only trans[action] trigger triggers trim underl[ine] undo unform[atted] union unique unix up update
syn keyword ProgressReserved    use-index use-revvideo use-underline user user[id] using v6frame value values view view-as vms wait-for web-con[text] when where while
syn keyword ProgressReserved    window window-maxim[ized] window-minim[ized] window-normal with work-tab[le] workfile write x-document x-noderef xcode xref _cbit
syn keyword ProgressReserved    _control _list _memory _msg _pcontrol _serial[-num] _trace 

" values
syn match   ProgressDate        "\<\(\d\|\d\d\)/\(\d\|\d\d\)/\(\d\d\|\d\d\d\d\)\>"
syn keyword ProgressLogical     true false yes no
syn match   ProgressNumber      "\<\(-\|\)\d\+\(\.\d\+\|\)\>"
syn region  ProgressString      matchgroup=ProgressQuote    start=+"+ end=+"+   skip=+\~\~\|\~"\|\\\\\|\\"+ keepend contains=ProgressInterpolate
syn region  ProgressString      matchgroup=ProgressQuote    start=+'+ end=+'+   skip=+\~\~\|\~'\|\\\\\|\\'+ keepend contains=ProgressInterpolate
syn region  ProgressInterpolate start='&' end='\d' contained
syn match   ProgressUnknown     "?"

" operators
syn match   ProgressOperator    "[!;|)(:.><+*=]\|\s-\s\|^-\s\|\s-$"

" xml
syn keyword ProgressXML append-child create-node create-node-namespace encoding get-child get-document-element import-node initialize-document-type insert-before load name num-children public-id remove-child replace-child save schema-path subtype subtype suppress-namespace-processing system-id type unique-id
syn keyword ProgressXML append-child attribute-names child-num clone-node delete-node get-attribute get-attribute-node get-child get-parent insert-before local-name longchar-to-node-value memptr-to-node-value name namespace-prefix namespace-uri node-value node-value-to-longchar node-value-to-memptr normalize num-children owner-document remove-attribute remove-child replace-child set-attribute set-attribute-node subtype type unique-id

" keywords
syn keyword ProgressKeyword <= <> >= abs[olute] accelerator across add-first add-last advise alert-box allow-replication and ansi-only anywhere append appl-alert[-boxes] application as-cursor ask-overwrite
syn keyword ProgressKeyword attach[ment] auto-end-key auto-endkey auto-go auto-ind[ent] auto-resize auto-z[ap] available-formats ave[rage] avg backward[s] base-key batch[-mode] begins bgc[olor] binary
syn keyword ProgressKeyword bind-where block-iteration-display border-bottom border-bottom-ch[ars] border-bottom-pi[xels] border-left border-left-char[s] border-left-pixe[ls] border-right border-right-cha[rs]
syn keyword ProgressKeyword border-right-pix[els] border-t[op] border-t[op-chars] border-top-pixel[s] both bottom box box-select[able] browse browse-header buffer buffer-chars buffer-copy buffer-compare buffer-lines
syn keyword ProgressKeyword button button[s] byte cache cache-size can-do can-find can-query can-set cancel-break cancel-button caps careful-paint case-sensitive cdecl character_length charset
syn keyword ProgressKeyword checked choose clear-select[ion] close code codepage codepage-convert col-of colon-align[ed] color-table column-bgc[olor] column-dcolor column-fgc[olor] column-font
syn keyword ProgressKeyword column-label-bgc[olor] column-label-dcolor column-label-fgc[olor] column-label-font column-of column-pfc[olor] column-sc[rolling] combo-box command compile complete
syn keyword ProgressKeyword connect constrained contents context context-pop[up] control-containe[r] c[ontrol-form] convert-to-offse[t] convert count cpcase cpcoll cpint[ernal] cplog
syn keyword ProgressKeyword cpprint cprcodein cprcodeout cpterm crc-val[ue] c[reate-control] create-result-list-entry create-test-file current-column current-environm[ent] current-iteration
syn keyword ProgressKeyword current-result-row current-row-modified current-value cursor-char cursor-line cursor-offset data-entry-retur[n] data-t[ype] date date-f[ormat] day db-references
syn keyword ProgressKeyword dcolor dde-error dde-i[d] dde-item dde-name dde-topic debu[g] default-b[utton] default-extensio[n] defer-lob-fetch define defined delete-char delete-current-row
syn keyword ProgressKeyword delete-line delete-selected-row delete-selected-rows deselect-focused-row deselect-rows deselect-selected-row d[esign-mode] dialog-box dialog-help dir disabled display-message
syn keyword ProgressKeyword display-t[ype] double drag-enabled drop-down drop-down-list dump dynamic edge edge[-chars] edge-p[ixels] editor empty end-key endkey entered entry eq error error-col[umn]
syn keyword ProgressKeyword error-row event-t[ype] event[s] exclusive-id execute exp expand extended external extract fetch-selected-row fgc[olor] file file-name file-off[set] file-type
syn keyword ProgressKeyword filename fill-in filled filters first-child first-column first-proc[edure] first-tab-i[tem] fixed-only float focused-row font-based-layout font-table force-file
syn keyword ProgressKeyword fore[ground] form-input format forward[s] frame-spa[cing] frame-x frame-y frequency from-cur[rent] full-height full-height-char[s] full-height-pixe[ls] full-pathn[ame]
syn keyword ProgressKeyword full-width full-width[-chars] full-width-pixel[s] ge get get-blue[-value] g[et-char-property] get-double get-dynamic get-file get-float get-green[-value]
syn keyword ProgressKeyword get-iteration get-license get-long get-message get-number get-pointer-value get-red[-value] get-repositioned-row get-selected-wid[get] get-short get-signature get-size
syn keyword ProgressKeyword get-string get-tab-item get-text-height get-text-height-char[s] get-text-height-pixe[ls] get-text-width get-text-width-c[hars] get-text-width-pixel[s] get-unsigned-short
syn keyword ProgressKeyword grayed grid-factor-horizont[al] grid-factor-vert[ical] grid-set grid-snap grid-unit-height grid-unit-height-cha[rs] grid-unit-height-pix[els] grid-unit-width grid-unit-width-char[s]
syn keyword ProgressKeyword grid-unit-width-pixe[ls] grid-visible gt handle height height[-chars] height-p[ixels] help-con[text] helpfile-n[ame] hidden hint hori[zontal] hwnd image image-down
syn keyword ProgressKeyword image-insensitive image-size image-size-c[hars] image-size-pixel[s] image-up immediate-display index-hint indexed-reposition info[rmation] initial-dir
syn keyword ProgressKeyword initial-filter initiate inner inner-chars inner-lines insert-b[acktab] insert-file insert-row insert-string insert-t[ab] internal-entries is-lead-byte
syn keyword ProgressKeyword is-row-selected is-selected item items-per-row join-by-sqldb keep-frame-z-ord[er] keep-messages keep-tab-order key keyword-all label-bgc[olor] label-dc[olor] label-fgc[olor]
syn keyword ProgressKeyword label-font label-pfc[olor] labels language[s] large large-to-small last-child last-tab-i[tem] last-proce[dure] lc le leading left left-align[ed] left-trim length
syn keyword ProgressKeyword line list-events list-items list-query-attrs list-set-attrs list-widgets load l[oad-control] load-icon load-image load-image-down load-image-insensitive load-image-up
syn keyword ProgressKeyword load-mouse-point[er] load-small-icon log logical lookahead lower lt manual-highlight margin-extra margin-height margin-height-ch[ars] margin-height-pi[xels] margin-width
syn keyword ProgressKeyword margin-width-cha[rs] margin-width-pix[els] matches max max-chars max-data-guess max-height max-height[-chars] max-height-pixel[s] max-rows max-size max-val[ue] max-width
syn keyword ProgressKeyword max-width[-chars] max-width-p[ixels] maximize max[imum] memory menu menu-bar menu-item menu-k[ey] menu-m[ouse] menubar message-area message-area-font message-line
syn keyword ProgressKeyword min min-height min-height[-chars] min-height-pixel[s] min-size min-val[ue] min-width min-width[-chars] min-width-p[ixels] min[imum] mod modified mod[ulo] month mouse-p[ointer]
syn keyword ProgressKeyword movable move-after-tab-i[tem] move-before-tab-[item] move-col[umn] move-to-b[ottom] move-to-eof move-to-t[op] multiple multiple-key multitasking-interval must-exist
syn keyword ProgressKeyword name native ne new-row next-col[umn] next-sibling next-tab-ite[m] next-value no-apply no-assign no-bind-where no-box no-column-scroll[ing] no-convert no-current-value
syn keyword ProgressKeyword no-debug no-drag no-echo no-index-hint no-join-by-sqldb no-lookahead no-row-markers no-scrolling no-separate-connection no-separators no-und[erline] no-word-wrap
syn keyword ProgressKeyword none not num-but[tons] num-col[umns] num-copies num-entries num-formats num-items num-iterations num-lines num-locked-colum[ns] num-messages num-results num-selected num-selected-rows
syn keyword ProgressKeyword num-selected-widgets num-tabs num-to-retain numeric numeric-f[ormat] octet_length ok ok-cancel on-frame[-border] or ordered-join ordinal orientation os-getenv outer
syn keyword ProgressKeyword outer-join override owner page-size page-wid[th] paged parent partial-key pascal pathname pfc[olor] pinnable pixels-per-colum[n] pixels-per-row popup-m[enu] popup-o[nly]
syn keyword ProgressKeyword position precision presel[ect] prev-col[umn] prev-sibling prev-tab-i[tem] primary printer-control-handle printer-setup private-d[ata] profiler Progress-s[ource]
syn keyword ProgressKeyword publish put-double put-float put-long put-short put-string put-unsigned-short query-off-end question radio-buttons radio-set random raw raw-transfer read-file read-json read-only
syn keyword ProgressKeyword real recursive refresh refreshable replace replace-selection-text replication-create replication-delete replication-write request resiza[ble] resize retry-cancel
syn keyword ProgressKeyword return-ins[erted] return-to-start-di[r] reverse-from right right-align[ed] right-trim round row row-ma[rkers] row-of rule rule-row rule-y save-as save-file
syn keyword ProgressKeyword screen-val[ue] scroll-bars scroll-delta scroll-horiz-value scroll-offset scroll-to-current-row scroll-to-i[tem] scroll-to-selected-row scroll-vert-value scrollable
syn keyword ProgressKeyword scrollbar-horizo[ntal] scrollbar-vertic[al] scrolled-row-positio[n] scrolling se-check-pools se-enable-of[f] se-enable-on se-num-pools se-use-messa[ge] section select-focused-row
syn keyword ProgressKeyword select-next-row select-prev-row select-repositioned-row select-row selectable selected selected-items selection-end selection-list selection-start selection-text
syn keyword ProgressKeyword send sensitive separate-connection separators set-blue[-value] set-break set-cell-focus set-contents set-dynamic set-green[-value] set-leakpoint set-pointer-valu[e]
syn keyword ProgressKeyword s[et-property] set-red[-value] set-repositioned-row set-selection set-size set-wait[-state] side-lab side-lab[e] side-lab[el] side-label-handl[e] side-lab[els] silent
syn keyword ProgressKeyword simple single size size-c[hars] size-p[ixels] slider smallint sort source source-procedure sql sqrt start status-area status-area-font status-bar stdcall stenciled stop stoppe[d]
syn keyword ProgressKeyword stored-proc[edure] string sub-ave[rage] sub-count sub-max[imum] sub-me[nu] sub-menu-help sub-min[imum] sub-total subscribe subst[itute] substr[ing] subtype sum super suppress-warning[s]
syn keyword ProgressKeyword system-alert-box[es] system-help tab-position tabbable target target-procedure temp-dir[ectory] terminate text-selected three-d through thru tic-marks time-source title-bgc[olor]
syn keyword ProgressKeyword title-dc[olor] title-fgc[olor] title-fo[nt] to to-rowid toggle-box tool-bar top topic total trailing trunc[ate] type unbuff[ered] unique-id unload unsubscribe upper use use-dic[t-exps]
syn keyword ProgressKeyword use-filename use-text v6display valid-event valid-handle validate validate-condition validate-message vert[ical] virtual-height virtual-height-c[hars]
syn keyword ProgressKeyword virtual-height-pixel[s] virtual-width virtual-width-ch[ars] virtual-width-pi[xels] visible wait warning weekday widget widget-e[nter] widget-h[andle] widget-l[eave]
syn keyword ProgressKeyword widget-pool width width[-chars] width-p[ixels] window-name window-sta[te] window-sys[tem] word-wrap write-json x-of y-of year yes-no yes-no-cancel _dcm

" types
syn keyword ProgressType    char[acter] da[te] dec[imal] handle int[eger] log[ical] recid rowid var[iable]

" control structures
" note that for, as in "define input-output parameter table for" is a keyword
" unless it is the first word on the line, when it's a control structure
syn keyword ProgressRepeat      do repeat while each first last next prev
syn match ProgressRepeat        "\<end"
syn match ProgressRepeat        "\<for\>"
syn match ProgressReserved      "\<table\([ \t\r\n]\+for\|\)\>"
syn keyword ProgressConditional case else if otherwise then when where
syn match ProgressConditional   "\<end\s*case\>"

" functions and procedures
syn keyword ProgressFunction function procedure return[s]
syn match ProgressFunction "^\s*end\s\s*function"
syn match ProgressFunction "^\s*end\s\s*procedure"

" messages for the preprocessor
syn region  ProgressComment start="/\*"             end="\*/"   contains=ProgressComment,ProgressTodo,ProgressDebug
syn region  ProgressInclude start="^[ \t]*[{][^&]"  end="[}]"   contains=ProgressPreProc,ProgressOperator,ProgressString,ProgressComment
syn region  ProgressPreProc start="&"               end="\>"    contained

" highlight misused whitespace
syn match   ProgressTrailingTabError    "\t"
syn match   ProgressSpaceError          "\s\+$"



" now apply highlighting classes to our terms

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
command -nargs=+ HiLink hi def link <args>
HiLink ProgressComment          Comment
HiLink ProgressConditional      Conditional
HiLink ProgressDate             Number
HiLink ProgressDebug            Debug
HiLink ProgressFunction         Function
HiLink ProgressIdentifier       Identifier
HiLink ProgressInclude          PreProc
HiLink ProgressInterpolate      Keyword
HiLink ProgressKeyword          Keyword
HiLink ProgressLogical          Number
HiLink ProgressNumber           Number
HiLink ProgressOOP              Statement
HiLink ProgressOperator         Operator
HiLink ProgressPreProc          PreProc
HiLink ProgressProcedure        Function
HiLink ProgressQuote            Delimiter
HiLink ProgressRepeat           Repeat
HiLink ProgressReserved         Statement
HiLink ProgressSpaceError       Error
HiLink ProgressString           String
HiLink ProgressTodo             Todo
HiLink ProgressTrailingTabError Error
HiLink ProgressType             Statement
HiLink ProgressXML              Keyword
delcommand HiLink

let b:current_syntax = "progress"
