"init-basic.vim 基本配置 
"
"
" Maintainer: LambdaRan	
" Last change:	2019-06-17 21:15:16
"

" vim: set ts=4 sw=4 tw=78 noet :


set nocompatible

set guifont=Courier_New:h11	"字体与字号

"set langmenu=zh_CN.UTF-8	"设置菜单语言
"language messages zh_CN.utf-8	"设置提示信息语言

" 颜色 {{{
colorscheme desert	"配色方案
syntax enable       "打开语法高亮
set t_Co=256        "启动256色
" }}}

" Spaces & Tabs {{{
set expandtab		"将制表符扩展为空格
set tabstop=4		"设置编辑时制表符占用空格数
set shiftwidth=4	"设置格式化时制表符占用空格数
set softtabstop=4	"设置4个空格为制表符
set autoindent      "自动缩进
" }}}

" 界面配置 {{{
set number		    "显示行号
"set relativenumber  "显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
set showmode        "在底部显示当前所处模式
set showcmd         "在底部显示输入的命令
set cursorline		"高亮显示当前行
"set cursorcolumn    "高亮显示当前列
filetype plugin indent on   "自动加载特定文件的缩进规则和插件
syntax on           "允许用指定语法高亮配色方案替换默认方案
set wildmenu        "底部命令自动补全
set wildmode=longest:list,full  "?
set lazyredraw      "只有在需要的时候重绘
set showmatch       "高亮遇到的[{()}]
set ruler		    "在状态栏显示当前光标位置 
set textwidth=80    "设置行宽
set wrap            "自动折行，即太长的行分成几行显示。
set linebreak       "只有遇到指定的符号(比如空格、连词号和其他标点符号),才发生折行。
"set wrapmargin=2    "指定折行处与编辑窗口的右边缘之间空出的字符数。
set laststatus=2    "是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set showtabline=2   "总是显示标签栏
set splitright      "水平切割窗口时，默认在右边显示新窗口
" }}}

" 编码设置 {{{
if has('multi_byte')    
    " 内部工作编码  
    set encoding=utf-8      
    " 文件默认编码  
    set fileencoding=utf-8      
    " 打开文件时自动尝试下面顺序的编码     
    set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1 
endif
" }}}

" 搜索 {{{
set hlsearch        "搜索时，高亮显示匹配结果
set incsearch		"输入搜索模式时，每输入一个字符就自动跳到匹配结果
set ignorecase      "搜索时忽略大小写
set smartcase       "如果同时打开ignorecase，那么，首字母大写时，大小写敏感，否则，不敏感
                    "比如，搜索Test时，将不匹配test；搜索test时，将匹配Test
" }}}

" 折叠 {{{
if has('folding')
    set foldenable          "启用折叠
    set foldlevelstart=10   "设置折叠级别，默认情况下打开大多数折叠
    set foldnestmax=10      "最多10个嵌套折叠
    nnoremap <space> za     "利用空格键来打开/关闭折叠
    set foldmethod=indent   "基于缩进级别折叠
endif
" }}}

" 移动 {{{
" move vertically by visual line 
nnoremap j gj 
nnoremap k gk
" }}}

" Leader Shortcuts {{{
" }}}

" 备份 {{{
set backup 
set backupdir=~/.vim/tmp    "备份文件地址
set backupext=.bak          "备份文件扩展名
set noswapfile              "禁用交换文件
set noundofile              "禁用undo文件
set writebackup             "保存时备份
" 创建目录，并且忽略可能出现的警告 
silent! call mkdir(expand('~/.vim/tmp'), "p", 0755)
" }}}

" Others {{{
set backspace=indent,eol,start  "设置退格键
"set spell spelllang=en_us       "打开英语单词的拼写检查。 
set autochdir       "自动切换工作目录
set noerrorbells    "出错时，不要发出响声。
set visualbell      "出错时，发出视觉提示，通常是屏幕闪烁。
set autoread        "打开文件监视。如果在编辑过程中文件发生外部改变辑,就会发出提示。
set cindent         "打开 C/C++ 语言缩进优化 
set ttimeout        "打开功能键超时检测（终端下功能键为一串 ESC 开头的字符串） 
set ttimeoutlen=10  "功能键超时检测 10 毫秒
"set gcr=a:block-blinkon0    " 禁止光标闪烁 
" In many terminal emulators the mouse works just fine, thus enable it.
" 支持使用鼠标
if has('mouse')
  set mouse=a
endif
"set modelines=1     "
" }}}



" vim:foldmethod=marker:foldlevel=0
