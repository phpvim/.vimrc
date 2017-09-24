call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'Lokaltog/vim-powerline'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme OceanicNext

noremap <C-p> :FZF<CR>
noremap <C-w> :bdelete<CR><CR>
noremap <C-q> :qall<CR>
vnoremap <C-c> :w !pbcopy<CR><CR>
noremap <C-v> :r !pbpaste<CR><CR>
imap <C-v> <CR><CR><ESC>k:r !pbpaste<CR>kkJJJi

set nu
set completeopt-=preview
set mouse=v
