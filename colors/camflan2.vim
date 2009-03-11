" Fruity Color Scheme
" ===================
"
" Author:	Camron Flanders <camron.flanders@gmail.com>
" Version:	0.1
"
set background=dark

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "camflan"

" Default Colors
hi Normal		        guibg=#111111   guifg=#eeeeee
"hi NonText	
hi Cursor		        guibg=#aaaaaa
"hi lCursor	
hi MatchParen           guibg=#ffff60   guifg=#111111   gui=bold

" Search
hi Search               guibg=#11dd00                   gui=bold
hi IncSearch	        guibg=#dd1100   guifg=#eeeeee   gui=none

" Window Elements
hi StatusLine	        guibg=#202020   guifg=#aeaeae   gui=bold
hi StatusLineNC         guibg=#101010   guifg=#222222   gui=bold,underline
hi VertSplit	        guibg=#202020   guifg=#aeaeae   gui=bold
hi Folded		        guibg=#191919   guifg=#444444   gui=underline
"hi SignColumn	
hi CursorLine	        guibg=#171717
hi LineNr               guibg=#181818   guifg=#333333

"true/false
hi False	            guibg=#520000	guifg=#e50808   gui=bold
hi True		            guibg=#005200	guifg=#08e508   gui=bold

" Specials
hi Todo			        guibg=#444400   guifg=#ffff60   gui=bold
hi Special		                        guifg=#ff9944
"hi Title		
"
" Syntax Elements
hi String		                        guifg=#0086f7
hi Constant		                        guifg=#cc0077
hi Number		                        guifg=#cc0077
hi Statement	                        guifg=#fb6a60
hi Identifier	                        guifg=#ff0086
hi Comment		        guibg=#111111   guifg=#444444
"hi Function		
"hi PreProc		
"hi Type			
"hi Error		
"hi Label		
"
" Python Highlighting for python.vim
"hi pythonString			
"hi pythonCoding			
"hi pythonRun			
"hi pythonBuiltinObj		
"hi pythonBuiltinFunc	
"hi pythonException		
"hi pythonExClass		
"hi pythonSpaceError		
"hi pythonDocTest		
"hi pythonDocTest2		
"hi pythonFunction		
"hi pythonClass			
"
" JavaScript Highlighting
"hi javaScript					
"hi javaScriptRegexpString		
"hi javaScriptDocComment			
"hi javaScriptCssStyles			
"hi javaScriptDomElemFuncs		
"hi javaScriptHtmlElemFuncs		
"hi javaScriptLabel				
"hi javaScriptPrototype			
"hi javaScriptConditional		
"hi javaScriptRepeat				
"hi javaScriptFunction			
"hi javaScriptArray				
" 	000052	
"
" CSS Highlighting
"hi cssIdentifier			
"hi cssBraces				
"
" Ruby Highlighting
"hi rubyFunction		
"hi rubyClass		
"hi rubyModule		
"hi rubyKeyword		
"hi rubySymbol		
"hi rubyIndentifier				
"hi rubyGlobalVariable			
"hi rubyConstant					
"hi rubyBlockParameter			
"hi rubyPredefinedIdentifier		
"hi rubyString			
"hi rubyStringDelimiter	
"hi rubySpaceError		
"hi rubyDocumentation	
"hi rubyData				
"
" XML Highlighting
"hi xmlTag			
"hi xmlTagName		
"hi xmlEndTag		
"hi xmlNamespace		
"hi xmlAttribPunct	
"hi xmlEqual			
"hi xmlCdata			
"hi xmlCdataCdata	
"hi xmlCdataStart	
"hi xmlCdataEnd		
"
" HTML Highlighting
"hi htmlTag			
"hi htmlEndTag		
"hi htmlSpecialTagName	
"hi htmlTagName		
"hi htmlTagN			
"hi htmlEvent		
"
" Django Highlighting
"hi djangoTagBlock	
"hi djangoVarBlock	
"hi djangoArgument	
"hi djangoStatement	
"hi djangoComment	
"hi djangoFilter		
"
" TagList highlighting
"hi MyTagListFileName	
"hi MyTagListTagName     
"hi MyTagListTitle		
"
" Jinja Highlighting
"hi jinjaTagBlock	
"hi jinjaVarBlock	
"hi jinjaString		
"hi jinjaNumber		
"hi jinjaStatement	
"hi jinjaComment		
"hi jinjaFilter		
"hi jinjaRaw			
"hi jinjaOperator	
"hi jinjaVariable	
"hi jinjaAttribute	
"hi jinjaSpecial		
"
" ERuby Highlighting (for my eruby.vim)
"hi erubyRubyDelim
"hi erubyComment	
"
