
"""""""""""""""""""""""""""""""""""Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/seoul256.vim'
""Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""" 主题相关. 
" 可选的主题名, 参见 .vim/bundle/vim-colorschemes/colors 目录
"colorscheme atom
"colorscheme molokai
" colorscheme luna-term
colorscheme gruvbox
""colorscheme jellybeans
"colorscheme janah
set background=dark
"set background=light
let g:gruvbox_contrast_light="light"
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_improved_warnings=1


" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
""let g:seoul256_background = 234
""colo seoul256



""""""""""""""""""""""""""""""""""""""""""""""" cpp-enhanced-highlight
" 高亮类，成员函数，标准库和模板
""let g:cpp_class_scope_highlight = 1
""let g:cpp_member_variable_highlight = 1
""let g:cpp_concepts_highlight = 1
""let g:cpp_experimental_simple_template_highlight = 1
""" 文件较大时使用下面的设置高亮模板速度较快，但会有一些小错误
""let g:cpp_experimental_template_highlight = 1


set encoding=utf-8 "编码
set t_Co=256  "启用256色
set hlsearch
set backspace=2
set autoindent  "自动缩减同上行一样
set ruler  "在状态栏显示光标的当前位置（位于哪一行哪一列）。"
set showmode
set nu  "行号"
set cursorline  "当前行高亮
syntax on  "语法高亮
filetype plugin indent on
set showcmd  "底部显示键入
set mouse=a  "支持鼠标
set tabstop=4  "tab == 4 spaces
set shiftwidth=4  "在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set expandtab  "tab转space
set softtabstop=4 "tab转4space
set showmatch  "括号匹配
set autoread  "打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。"
set linebreak  "不会在单词内折行"
set laststatus=2  "显示状态栏"

"设置备份文件、交换文件、操作历史文件的保存位置。
"结尾的//表示生成的文件名带有绝对路径，路径中用%替换目录分隔符，这样可以防止文件重名。
set undofile  "保留撤销历史"
set history=1000
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//

"如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。"
set listchars=tab:»■,trail:■
set list

"命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。"
set wildmenu
set wildmode=longest:list,full

inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

vmap <c-c> "+y


" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

autocmd Filetype gitcommit setlocal spell textwidth=72

