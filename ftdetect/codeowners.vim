" Vim filetype detection file
" Language:   GitHub CODEOWNERS file
" Maintainer: rhysd <lin90162@yahoo.co.jp>
" License:    MIT Copyright (c) 2019 rhysd
" For bugs, patches and license go to https://github.com/rhysd/vim-syntax-codeowners

if get(g:, 'codeowners_only_dot_github', 0)
    autocmd BufNewFile,BufReadPost .github/CODEOWNERS setlocal filetype=codeowners
else
    autocmd BufNewFile,BufReadPost CODEOWNERS setlocal filetype=codeowners
endif
