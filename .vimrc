
 set fileencoding=utf-8
 filetype plugin indent on
 syntax on

 "color
 color molokai

 " for gitgutter
set updatetime=250


 " Default Indentation
  set hlsearch
  set autoindent
  set smartindent     " indent when
  set tabstop=4       " tab width
  set softtabstop=4   " backspace
  set shiftwidth=4    " indent width
  " set textwidth=79
  " set smarttab
  set expandtab       " expand tab to space
  
  autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
  autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
  autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
  autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
  autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
  autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

  " eggcache vim
  nnoremap ; :
  :command W w
  :command WQ wq
  :command Wq wq
  :command Q q
  :command Qa qa
  :command QA qa
  "syntax support
  autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
  " js
  let g:html_indent_inctags = "html,body,head,tbody"
  let g:html_indent_script1 = "inc"
  let g:html_indent_style1 = "inc"

  "tabular"align anything 
  let g:tabular_loaded = 1


 "editor settings
 set history=1000
 set nocompatible
 set nofoldenable                                                  " disable folding"
 set confirm                                                       " prompt when existing from an unsaved file
 set backspace=indent,eol,start                                    " More powerful backspacing
 set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
 set mouse=a                                                       " use mouse in all modes
 set report=0                                                      " always report number of lines changed                "
 set nowrap                                                        " dont wrap lines
 set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
 set number                                                        " show line numbers
 set showmatch                                                     " show matching bracket (briefly jump)
 set showcmd                                                       " show typed command in status bar
 set title                                                         " show file in titlebar
 set laststatus=2                                                  " use 2 lines for the status bar
 set matchtime=2                                                   " show matching bracket for 0.2 seconds
 set matchpairs+=<:>                                               " specially for html

 "leader键
 let mapleader=","
 let g:mapleader=","

 " highlight current line
 au WinLeave * set nocursorline nocursorcolumn
 au WinEnter * set cursorline cursorcolumn
 set cursorline  cursorcolumn

 " search
 " set incsearch
 " "set highlight 	" conflict with highlight current line
 " set ignorecase
 " set smartcase
 """"""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle设置
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" filetree 
Plugin 'scrooloose/nerdtree' 
" fastter way to comment code
Plugin 'scrooloose/nerdcommenter'
" use F4 to display or not function list
Plugin 'vim-scripts/taglist.vim'
" quick commands to swtich between source files and header files quickly
Plugin 'vim-scripts/a.vim'
" complete code
Plugin 'Shougo/neocomplete'
" coordinate with neocomplete 
Plugin 'Shougo/neco-syntax'
" coordinate with neocomplete 
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'scrooloose/syntastic'
" surroundings
Plugin 'tpope/vim-surround'
" display tags
Plugin 'godlygeek/tabular'
" command complete like newcomplete
Plugin 'ervandew/supertab'
" color molokai
Plugin 'tomasr/molokai'
" for statue line
Plugin 'bling/vim-airline'
" for tmux clip
Plugin 'tmux-plugins/vim-tmux-focus-events'
" for tmux clip
Plugin 'roxma/vim-tmux-clipboard'
" for search codd
Plugin 'mileszs/ack.vim'
" for html template engine former is jade
Plugin 'digitaltoad/vim-pug'
" for git diff 
Plugin 'airblade/vim-gitgutter'


"Plugin 'Shougo/vimshell'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"neocomlete configure''''''''''''''''''''''''''''''''''''''''''''''''''''''
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.''''''''''''''''''''''''''''''''''''''''''''''''''
"imap <expr><CR> neosnippet#expandable_or_jumpable() ? "更改了ENTER键为补全
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: pumvisible() ? "\<C-n>" : "\<CR>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
"scrooloose/syntastic'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"NERDTree''''''''''''''''''''''''''''''''''''''''''
map <C-e> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"-----------------------------------------------------------------
" plugin - taglist.vim 查看函数列表，需要ctags程序
" F4 打开隐藏taglist窗口
"-----------------------------------------------------------------
" return OS type, eg: windows, or linux, mac, et.st..
function! MySys()
    if has("win16") ||has("win32") || has("win64") || has("win95")
        return "windows"
    elseif has("unix")
        return "linux"
    endif
endfunction
if MySys() == "windows" " 设定windows系统中ctags程序的位置
    let Tlist_Ctags_Cmd ='"'.$VIMRUNTIME.'/ctags.exe"'
elseif MySys() == "linux" " 设定windows系统中ctags程序的位置
    let Tlist_Ctags_Cmd ='/usr/bin/ctags'
endif
nnoremap <silent><F4> :TlistToggle<CR>
let Tlist_Show_One_File = 1 " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1 " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 " 在右侧窗口中显示taglist窗口
let Tlist_File_Fold_Auto_Close=1 " 自动折叠当前非编辑文件的方法列表
let Tlist_Auto_Update = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Compact_Format = 1
let Tlist_Auto_Open=1 
let Tlist_Exit_OnlyWindow=1
"""""""""ag search
if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif

