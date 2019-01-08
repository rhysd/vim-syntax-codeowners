" Vim filetype plugin file
" Language:   GitHub CODEOWNERS file
" Maintainer: rhysd <lin90162@yahoo.co.jp>
" License:    MIT Copyright (c) 2019 rhysd
" For bugs, patches and license go to https://github.com/rhysd/vim-syntax-codeowners

if exists('b:did_ftplugin')
    finish
endif
let b:did_ftplugin = 1

" Note: Inherit 'conf' configuration

let s:cpo_save = &cpo
set cpo&vim

let b:undo_ftplugin = "setl com< cms< fo<"

setlocal comments=:# commentstring=#\ %s formatoptions-=t formatoptions+=croql

let &cpo = s:cpo_save
unlet s:cpo_save
