" Language:    Cram Test Suites
" Maintainer:  @pscl4rke (P. S. Clarke)
" URL:         https://github.com/pscl4rke/vim-cram
" License:     GPLv2


" I cannot use 'setfiletype' for this because the globally installed
" highlighting for 'tads' will take precedence...
autocmd BufNewFile,BufRead *.t setlocal filetype=cram
