" nvimrc for kabbelalle


" Pluginscaller
call plug#begin()
	Plug 'neovim/nvim-lspconfig'
	Plug 'simrat39/rust-tools.nvim' " https://github.com/simrat39/rust-tools.nvim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'chrisbra/Colorizer'
    Plug 'folke/which-key.nvim'
    Plug 'lervag/vimtex'
    Plug 'vimwiki/vimwiki'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Themes/Aesthetics
    Plug 'dylanaraps/wal.vim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
	Plug 'sainnhe/everforest'
call plug#end()

" ========= INCLUDE FILES =======================
source ~/.config/nvim/plugconfigs/looks.vim
source /home/van/.config/nvim/plugconfigs/vimtex.vim


" Too stupid to make this work
" lua require('lua/include')
luafile ~/.config/nvim/lua/include.lua
" ======== FILES INCLUDED =======================


set backspace=indent,eol,start
set autoindent
set ruler
set showcmd
set nolangremap
set nu
set rnu
set tabstop=4
set shiftwidth=0
set softtabstop=-1
set cursorline

" Needed for VimTex
syntax on
filetype plugin on
au BufNewFile,BufRead /*.rasi setf css

" Skrur bare på 'hlsearch' mens jeg søker
augroup vimrc-insearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END



" Keybinds
" Plugins kaskje benytter seg av mapleader, bruk local for å ungå konflikt
"
let mapleader="ø"
let maplocalleader="æ"
nnoremap <silent> <leader>e :e ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>s :source ~/.config/nvim/init.vim<CR>


map <F5> i{<Esc>ea}<Esc>
imap jj <Esc>

" Bevegelser
map J 10j
map K 10k
map H 10h
map L 10l

" Bevegelse i insert mode
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" Navigate windows
noremap <A-h> <C-w>h
noremap <A-j> <C-w>j
noremap <A-k> <C-w>k
noremap <A-l> <C-w>l

" Plugins
" ============================================
source ~/.config/nvim/plugconfigs/airline.vim

map <leader>c :ColorToggle<CR>

" Markdownpreview
nmap <leader>m <Plug>MarkdownPreview
nmap <leader>n <Plug>MarkdownPreviewStop
"nmap <C-p> <Plug>MarkdownPreviewToggle

" __VimTex____________________________________
" VimTex benytter seg av localleader som er æ
noremap <localleader>v :! latexmk -pvc -pdf % &<CR>
function! ZathuraOpenPdf()
	let fullPath = expand("%:p")
	let pdfFile = substitute(fullPath, ".tex", ".pdf", "")
	execute "silent !zathura '" . pdfFile . "' &"
endfunction

nnoremap <A-p> :call ZathuraOpenPdf()<CR>


" Wich Key
" local wk = require("which-key")
" wk.register(mappings, opts)



