Vim filetype support for [GitHub `CODEOWNERS` file][ghdoc]
==========================================================

`CODEOWNERS` file is [officially supported by GitHub][ghdoc].

`CODEOWNERS` file syntax is basically the same as `.gitignore`. [vim-syntax-codeowners][repo] provides
additional syntax highlights and features for GitHub specific things:

- Dedicated filetype `codeowners`
- File path patterns highlighting
- `@user` or `@org/team` highlighting

Comparison:

| Default (`ft=conf`)             | By this plugin (`ft=codeowners`)        |
|---------------------------------|-----------------------------------------|
| ![screenshot for conf][ss-conf] | ![screenshot-codeowners][ss-codeowners] |


## Installation

If you use any package manager, please follow its instruction.

With [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'rhysd/vim-syntax-codeowners'
```

With [dein.vim](https://github.com/Shougo/dein.vim):

```vim
call dein#add('rhysd/vim-syntax-codeowners')
```

With [minpac](https://github.com/k-takata/minpac):

```vim
call minpac#add('rhysd/vim-syntax-codeowners')
```

When you're using Vim's builtin packager, please follow instruction at `:help pack-add`.


## Customization

### `g:codeowners_only_dot_github`

If this variable exists and its value is set to `1`, only setting `codeowners` filetype for `.github/CODEOWNERS` file.
This configuration is conservative and useful when you may use `CODEOWNERS` file outside GitHub since
`.github` directory is dedicated for GitHub.
By default this plugin sets `codeowners` filetype at any `CODEOWNERS` files.


## Development

Repository is [hosted at GitHub][repo]. Please report any issues or send patch by creating pull requests there.

## License

Distributed under [the MIT License](LICENSE.txt)

[ghdoc]: https://help.github.com/articles/about-code-owners/
[repo]: https://github.com/rhysd/vim-syntax-codeowners
[ss-conf]: https://github.com/rhysd/ss/blob/master/vim-syntax-codeowners/conf.png?raw=true
[ss-codeowners]: https://github.com/rhysd/ss/blob/master/vim-syntax-codeowners/codeowners.png?raw=true
