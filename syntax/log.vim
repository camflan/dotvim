" Vim syntax file
" Language:	iScriptDebug Log
" Creator:	Camron Flanders
" Last Change:	08/02/07:CBF

syn case ignore

"This selects INDocument objects for highlighting
syn match	iScriptINDocument		"-.\{-}\/.\{-}\/.\{-}\/.\{-}\/.\{-}\/.\{-}-"

"This selects the date/time/script name for highlighting
syn match   iScriptDebugDatefile	"^[0-9]*\/[0-9]*.[0-9]*\:[0-9]*\:[0-9]*\.[0-9]*.\w*\s"
syn match   inServerDebugDate       "^[0-9]*\:[0-9]*\:[0-9]*\.[0-9]*" 
syn match   inServerThread          "(\w*)"

"This selects file names for highlighting
syn match   iScriptDebugFile        "\w\:\\.*\.\w\{3}"

"This selects the output severity tag for highlighting
syn match   iScriptDebugCRITICAL    "\[CRITICAL\]"
syn match	iScriptDebugERROR		"\[.\{-}ERROR.\{-}\]"
syn match	iScriptDebugWARNING     "\[.\{-}WARNING.\{-}\]"
syn match	iScriptDebugNOTIFY		"\[.\{-}NOTIFY.\{-}\]"
syn match	iScriptDebugINFO		"\[.\{-}INFO.\{-}\]"
syn match	iScriptDebugDEBUG		"\[.\{-}DEBUG.\{-}\]"

syn sync fromstart
syn sync maxlines=100

" Define the default highlighting.
if version >= 508 || !exists("did_log_syn_inits")
  if version < 508
    let did_javascript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink iScriptDebugFile				javaScriptStringS
  HiLink iScriptDebugSpecialCharacter	Boolean
  HiLink iScriptDebugDatefile			Boolean
  HiLink iScriptDebugCRITICAL			ErrorMsg
  HiLink iScriptDebugERROR				WarningMsg
  HiLink iScriptDebugWARNING			Number
  HiLink iScriptDebugNOTIFY				Comment
  HiLink iScriptDebugINFO				Function
  HiLink iScriptDebugDEBUG				Statement
  HiLink iScriptINDocument				Type
  HiLink inServerDebugDate              Boolean
  HiLink inServerThread                 Function

  delcommand HiLink
endif
