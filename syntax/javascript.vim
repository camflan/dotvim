" Vim syntax file
" Language:	JavaScript/iScript
" Maintainer:	Camron Flanders
" Last Change:	03/27/08:CBF
" based on javascript syntax, modified for iScript
" $Revision: 2270 $

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
" tuning parameters:
" unlet javaScript_fold

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'javascript'
endif

" Drop fold if it set but vim doesn't support it.
if version < 600 && exists("javaScript_fold")
  unlet javaScript_fold
endif

syn case ignore


syn keyword javaScriptCommentTodo      TODO FIXME XXX TBD contained
syn match   javaScriptLineComment      "\/\/.*" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptCommentSkip      "^[ \t]*\*\($\|[ \t]\+\)"
syn region  javaScriptComment	       start="/\*"  end="\*/" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptSpecial	       "\\\d\d\d\|\\."
syn region  javaScriptStringD	       start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=javaScriptSpecial,@htmlPreproc
syn region  javaScriptStringS	       start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=javaScriptSpecial,@htmlPreproc

syn match   javaScriptSpecialCharacter "'\\.'"
syn match   javaScriptNumber	       "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"
syn region  javaScriptRegexpString     start=+/[^/*]+me=e-1 skip=+\\\\\|\\/+ end=+/[gi]\{0,2\}\s*$+ end=+/[gi]\{0,2\}\s*[;.,)\]}]+me=e-1 contains=@htmlPreproc oneline

syn keyword iScriptObjects	        INDocument INWfItem INWfQueue INLogicalObject INClassProp INDocManager INDocPriv INDocType INDocTypeList INDrawer INFont INInstanceProp INKeys INLogicalObject INMail INPriv INPrivEnum INProperty INSubObject INSubobPriv INSubobTemplate INUser INVersion INWfAdmin INWfQueuePriv INWorksheet INWsDataDef INWsPresentation

syn keyword iScriptObjProps	        id drawer folder tab f3 f4 f5 docTypeName name objectId logobCount 
syn match   iScriptMethods	        "\..\{-}\>"
syn match   iScriptSyms		        "[\&\|\^\%\$\#\@\!\*\+\=\_\-<>]"
syn match   iScriptArray                "\<\w\{-}\[.\{-}\]"

syn keyword ToDo			define link
syn keyword javaScriptConditional	if else switch
syn keyword javaScriptRepeat		while for do in
syn keyword javaScriptBranch		break continue
syn keyword javaScriptOperator		new delete instanceof typeof
syn keyword javaScriptType		Array Boolean Date Function Number Object String RegExp
syn keyword javaScriptStatement		return with
"syn keyword javaScriptBoolean		true false
syn keyword javaScriptNull		null undefined
syn keyword javaScriptIdentifier	arguments this var
syn keyword javaScriptLabel		case default
syn keyword javaScriptException		try catch finally throw
syn keyword javaScriptMessage		alert confirm prompt status
syn keyword javaScriptGlobal		self window top parent
syn keyword javaScriptMember		document event location 
syn keyword javaScriptDeprecated	escape unescape
syn keyword javaScriptReserved		abstract boolean byte char class const debugger double enum export extends final float goto implements import int interface long native package private protected public short static super synchronized throws transient volatile 

syn keyword True			true True
syn keyword False			false False

if exists("javaScript_fold")
    syn match	javaScriptFunction      "\<function\>"
    syn region	javaScriptFunctionFold	start="\<function\>.*[^};]$" end="^\z1}.*$" transparent fold keepend

    syn sync match javaScriptSync	grouphere javaScriptFunctionFold "\<function\>"
    syn sync match javaScriptSync	grouphere NONE "^}"

    setlocal foldmethod=syntax
    setlocal foldtext=getline(v:foldstart)
else
    syn keyword	javaScriptFunction	   function
    syn match	javaScriptBraces	   "[{}\[\]]"
    syn match	javaScriptParens	   "[()]"
endif

syn sync fromstart
syn sync maxlines=100

if main_syntax == "javascript"
  syn sync ccomment javaScriptComment
endif

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_javascript_syn_inits")
  if version < 508
    let did_javascript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink iScriptObjProps	        LineNr
  HiLink iScriptSyms		        LineNr
  HiLink javaScrParenError		javaScriptError
  HiLink javaScriptBoolean		Boolean
  HiLink javaScriptBraces		LineNr
  HiLink javaScriptBranch		Conditional
  HiLink javaScriptCharacter		Character
  HiLink javaScriptComment		Comment
  HiLink javaScriptCommentTodo		Todo
  HiLink javaScriptConditional		Conditional
  HiLink javaScriptError		Error
  HiLink javaScriptFunction		Function
  HiLink javaScriptLineComment		Comment
  HiLink javaScriptNull			Keyword
  HiLink javaScriptNumber		Number
  HiLink javaScriptOperator		Operator
  HiLink javaScriptParens	        LineNr
  HiLink javaScriptRegexpString		String
  HiLink javaScriptRepeat		Repeat
  HiLink javaScriptSpecial		Special
  HiLink javaScriptSpecialCharacter	javaScriptSpecial
  HiLink javaScriptStatement		Statement
  HiLink javaScriptStringD		String
  HiLink javaScriptStringS		Identifier
  HiLink javaScriptType			Type
  HiLink iScriptArray                   javaScriptArray

  HiLink iScriptMethods		        Delimiter
  HiLink iScriptObjects		        pythonExClass
  HiLink javaScriptConstant		Label
  HiLink javaScriptDebug		Debug
  HiLink javaScriptDeprecated		Exception 
  HiLink javaScriptException		Exception
  HiLink javaScriptGlobal		Keyword
  HiLink javaScriptIdentifier		Identifier
  HiLink javaScriptLabel		Label
  HiLink javaScriptMember		Keyword
  HiLink javaScriptMessage		Keyword
  HiLink javaScriptReserved		Keyword

  delcommand HiLink
endif

let b:current_syntax = "javascript"
if main_syntax == 'javascript'
  unlet main_syntax
endif

" vim: ts=8
