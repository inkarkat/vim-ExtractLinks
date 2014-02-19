" markdown_ExtractLinks.vim: Pattern for Markdown links for link extraction.
"
" DEPENDENCIES:
"   - ExtractLinks.vim plugin
"
" Copyright: (C) 2014 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"	001	19-Feb-2014	file creation

if ! exists('b:ExtractLinks_Expressions')
    let b:ExtractLinks_Expressions = {}
endif
let b:ExtractLinks_Expressions['\(!\?\)\[\([^]]\+\)\] \?(\([^)]\+\))'] = 'markdown'

let b:ExtractLinks_ReplacementInline = '\1[\2][link\#]'
let b:ExtractLinks_ReplacementExtraction = '[link\#]: \3 "\2"\n'

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
