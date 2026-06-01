" Vim syntax file
" Language:		sh shdoc additions
" Author:       Rafael Martinez <rafmartom@gmail.com>
"
" This addition will let you highlight the shdoc anotations
" https://github.com/reconquest/shdoc
"
" Place it in ${HOME}/.vim/after/syntax/
"
" shdoc additions ----------------------------------------
" --------------------------------------------------------

syn match	shComment		"^\s*\zs#.*$"	contains=@shCommentGroup,@shDocTags

syn cluster shDocTags   contains=shDocNameTag,shDocFileTag,shDocBriefTag,shDocDescriptionTag,shDocSectionTag,shDocExampleTag,shDocOptionTag,shDocArgTag,shDocNoArgsTag,shDocSetTag,shDocExitcodeTag,shDocStdinTag,shDocStdoutTag,shDocStderrTag,shDocSeeTag,shDocInernalTag


syn match  shDocParam	contained "\s\zs\S\+"
syn match  shDocMultipleString	contained "\zs\(\s\S\+\)\+"

syn match  shDocDoubleOption	contained "\s\zs-\{1,2}\S\+\s\=\(<\S\+>\)\=\(\s\=|\s-\{1,2}\S\+\s\=\(<\S\+>\)\=\)*"

syn match  shDocOptionTag contained "\s\zs@option\s\+\S\+" contains=shDocDoubleOption
syn match  shDocArgTag contained "\s\zs@arg\s\+\S\+" contains=shDocParam 
syn match  shDocSetTag contained "\s\zs@set\s\+\S\+" contains=shDocParam 
syn match  shDocExitcodeTag contained "\s\zs@exitcode\s\+\S\+" contains=shDocParam 

syn match  shDocSectionTag contained "\s\zs@section\s\+\S\+" contains=shDocMultipleString

syn match  shDocNameTag contained "\s\zs@name\>"
syn match  shDocFileTag contained "\s\zs@file\>"
syn match  shDocBriefTag contained "\s\zs@brief\>"
syn match  shDocDescriptionTag contained "\s\zs@description\>"
syn match  shDocExampleTag contained "\s\zs@example\>"
syn match  shDocNoArgsTag contained "\s\zs@noargs\>"
syn match  shDocStdinTag contained "\s\zs@stdin\>"
syn match  shDocStdoutTag contained "\s\zs@stdout\>"
syn match  shDocStderrTag contained "\s\zs@stderr\>"
syn match  shDocSeeTag contained "\s\zs@see\>"
syn match  shDocInernalTag contained "\s\zs@internal\>"



hi def link shDocParam                  Function
hi def link shDocMultipleString          Function
hi def link shDocDoubleOption           Function

hi def link shDocNameTag                Special
hi def link shDocFileTag                Special 
hi def link shDocBriefTag               Special 
hi def link shDocDescriptionTag         Special    
hi def link shDocSectionTag             Special    
hi def link shDocExampleTag             Special    
hi def link shDocOptionTag              Special    
hi def link shDocArgTag                 Special    
hi def link shDocNoArgsTag              Special    
hi def link shDocSetTag                 Special    
hi def link shDocExitcodeTag            Special    
hi def link shDocStdinTag               Special    
hi def link shDocStdoutTag              Special    
hi def link shDocStderrTag              Special    
hi def link shDocSeeTag                 Special    
hi def link shDocInernalTag             Special    

" eof eof eof --------------------------------------------
" shdoc additions ----------------------------------------
