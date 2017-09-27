call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lvht/fzf-mru'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'lvht/phpfold.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'Lokaltog/vim-powerline'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim',{'do' : 'Ack'}
Plug 'albfan/ag.vim',{'do' : 'Ag' , 'loadconf' : 1}
call plug#end()

let mapleader = "`"
let g:airline#extensions#tabline#enabled = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:fzf_mru_ignore_patterns = 'fugitive\|\.git/|vendor/|\_^/tmp/' " default value
let g:phpfold_include_surround_blank_lines = 'downward'

if (has("termguicolors"))
    set termguicolors
endif
syntax enable
colorscheme OceanicNext
filetype plugin indent on
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

noremap <C-p> :FZF<CR>
noremap <C-w> :bdelete<CR><CR>
noremap <C-q> :qall<CR>
noremap h :bprev<CR>
noremap l :bnext<CR>
vnoremap <C-c> :w !pbcopy<CR><CR>
noremap <C-v> :r !pbpaste<CR><CR>
imap <C-v> <CR><CR><ESC>k:r !pbpaste<CR>kkJJJi
nnoremap <silent><nowait> <leader>kk :call phpcd#JumpToDefinition('normal')<CR>
nnoremap <silent><nowait> <leader>jj :call phpcd#JumpBack()<CR>
inoremap <silent><nowait> <tab><tab> <C-x><C-o>
nnoremap <silent><nowait> s<left> :bprev<CR> nnoremap <silent><nowait> s<right> :bnext<CR> 

set nu
set completeopt-=preview
set mouse=v
set tabstop=4
set shiftwidth=4
set expandtab

"FZF binary path.
set rtp+=/usr/local/bin/fzf
