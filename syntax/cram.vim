" Language:    Cram Test Suites
" Maintainer:  @pscl4rke (P. S. Clarke)
" URL:         https://github.com/pscl4rke/vim-cram
" License:     GPLv2


" Indented lines are the key (everything else is a comment):
syn match cramCode "^ .*" contains=cramCmd,cramCont,cramTag,cramEsc


" Identify the line(s) that show the command that would be run:
syn match cramCmd "^  *\$ .*$" contained
syn match cramCont "^  *> .*$" contained


" Trailing tags alter the matching mechanism used:
syn match cramTag "(re)$" contained
syn match cramTag "(glob)$" contained
syn match cramTag "(no-eol)$" contained
syn match cramTag "(esc)$" contained


" Escape sequences showing raw byte values ("\x0a"):
syn match cramEsc "\\x\x\x" contained


" Finally link the regions to the colour scheme:
hi def link cramCode String
hi def link cramCmd Function
hi def link cramCont Function
hi def link cramTag Statement
hi def link cramEsc Special
