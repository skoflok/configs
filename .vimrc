"set ts=4 sw=4
set laststatus=2
set number
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'preservim/NERDTree'
Plug 'vim-scripts/c.vim'
Plug 'fatih/vim-go'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'stephpy/vim-php-cs-fixer'
Plug 'neoclide/coc.nvim', {'tag': 'v0.0.82'} ":CocInstall coc-tabnine
call plug#end()

"augroup FileTypeSpecificAutocommands
"    autocmd FileType php setlocal tabstop=2 softtabstop=2 shiftwidth=2
"augroup END




" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR12"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
let g:php_cs_fixer_allow_risky = "yes"      " options: --allow-risky
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 1                    " Return the output of command if 1, else an inline information.
autocmd BufWritePost *.php call PhpCsFixerFixFile()
