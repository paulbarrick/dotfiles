set termguicolors
set t_ut=

" set standard file encoding
set encoding=utf8

" no special per-file vim override configs
set nomodeline

" prevent word wrapping
set nowrap
	" exept for markdown
	autocmd FileType markdown setlocal wrap

	" adjust system undo levels
set undolevels=100

" use system clipboard
set clipboard=unnamed

" set tab width
set tabstop=4
set shiftwidth=4

" don't let vim hide characters or make sounds
set conceallevel=1
set noerrorbells

" number gutter
set number

" use search highlighting
set hlsearch

" space above/beside cursor from screen edges
set scrolloff=1
set sidescrolloff=5

" disable mouse support
set mouse=r
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

noremap <Left> :vertical resize -1<CR>
noremap <Right> :vertical resize +1<CR>
noremap <Up> :resize -1<CR>
noremap <Down> :resize +1<CR>
" disable arrow keys completely in insert mode
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

" return to last opened file - \\ to open previous file from buffer
nmap <Leader><Leader> <c-^>

" next/previous buffer
noremap <Tab> :bnext!<CR>
noremap <S-Tab> :bprev!<CR>

" plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/unite.vim'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'mhinz/vim-grepper'
Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'justinmk/vim-sneak'
" Plug 'Yggdroot/indentLine' indentation guide
" Plug 'w0rp/ale' linting
call plug#end()

" theme
" color Dracula
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
" indentation guide ('Yggdroot/indentLine' plugin)
" let g:indentLine_enabled = 1
" let g:indentLine_char = ")"
syntax on
colorscheme onedark

" vim-airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set laststatus=2

" ctrl-p fuzzy find
noremap <Leader>p :CtrlP<CR>
noremap <Leader>t :CtrlP<CR>

" vim grepper
nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>

" file explorer
map ` :VimFiler -explorer<CR>
map ~ :VimFilerCurrentDir -explorer -find<CR>

" auto-complete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" vim-sneak
let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

