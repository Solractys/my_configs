
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

set termguicolors

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
let mapleader = " "
set nowrap
set number
set relativenumber
set cursorline
highlight CursorLineNr guibg=#2C3043 ctermbg=darkgrey
set scrolloff=999
set tabstop=4
set shiftwidth=4

nnoremap <C-t> :vertical terminal <CR>
tnoremap <Esc><Esc> <C-\><C-n>
nnoremap <leader>t :terminal<CR>
nnoremap <leader>v :vs .<CR>
noremap <leader>h :sp .<CR>

augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END
noremap <silent> gcc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ggc :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
