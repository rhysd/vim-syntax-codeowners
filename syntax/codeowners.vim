" Vim syntax file
" Language:   GitHub CODEOWNERS file
" Maintainer: rhysd <lin90162@yahoo.co.jp>
" License:    MIT Copyright (c) 2019 rhysd
" For bugs, patches and license go to https://github.com/rhysd/vim-syntax-codeowners

" Note: Official work flow documentation:
"   https://developer.github.com/actions/creating-workflows/workflow-configuration-options/

if exists('b:current_syntax')
    finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn match codeownersComment /^#.*$/ contains=@Spell
syn match codeownersDef /^[^#].*$/ contains=codeownersPattern
syn match codeownersPattern /^\S\+/ contained containedin=codeownersDef nextgroup=codeownersOwners contains=codeownersPatternSpecial
syn match codeownersPatternSpecial /\\\@<![?*]\|\_^!/ contained containedin=codeownersPattern display
syn match codeownersOwners /\s\+.*$/ contained contains=codeownersUserOrTeam,codeownersEmail
syn match codeownersUserOrTeam /\%(\s\+\)\@<=@\S\+/ contained containedin=codeownersOwners display
syn match codeownersEmail /\%(\s\+\)\@<=[^@[:space:]]\+@\S\+/ contained containedin=codeownersOwners display

hi def link codeownersComment Comment
hi def link codeownersPattern Define
hi def link codeownersPatternSpecial Special
hi def link codeownersUserOrTeam Identifier
hi def link codeownersEmail String

let b:current_syntax = 'codeowners'

let &cpo = s:cpo_save
unlet s:cpo_save
