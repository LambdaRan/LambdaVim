"init-plugins.vim 插件管理
"
" Maintainer: LambdaRan	
" Last change:	2019-06-17 21:35:16
"

" vim: set ts=4 sw=4 tw=78 noet :


" 插件分组管理
if !exists('g:bundle_group')
	let g:bundle_group = ['basic', 'tags', 'enhanced', 'filetypes', 'textobj']
	let g:bundle_group += ['airline', 'nerdtree', 'ale', 'echodoc']
	let g:bundle_group += ['leaderf']
endif


" 在 ~/.vim/bundles 下安装插件
call plug#begin(get(g:, 'bundle_home', '~/.vim/bundles'))
 
" 基础插件 {{{
if index(g:bundle_group, 'basic') >= 0

	" 展示开始画面，显示最近编辑过的文件
	Plug 'mhinz/vim-startify'
	" 文件浏览器，代替 netrw
	"Plug 'justinmk/vim-dirvish'
endif
" }}}

" 增强插件 {{{
if index(g:bundle_group, 'enhanced') >= 0

	" 快速文件搜索
	"Plug 'junegunn/fzf'

	" 配对括号和引号自动补全
	Plug 'Raimondi/delimitMate'

endif
" }}}

" 文本对象：textobj 全家桶 {{{
if index(g:bundle_group, 'textobj') >= 0

	" 基础插件：提供让用户方便的自定义文本对象的接口
	Plug 'kana/vim-textobj-user'

	" indent 文本对象：ii/ai 表示当前缩进，vii 选中当缩进，cii 改写缩进
	Plug 'kana/vim-textobj-indent'

	" 语法文本对象：iy/ay 基于语法的文本对象
	Plug 'kana/vim-textobj-syntax'

	" 函数文本对象：if/af 支持 c/c++/vim/java
	Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }

	" 参数文本对象：i,/a, 包括参数或者列表元素
	Plug 'sgur/vim-textobj-parameter'

	" 提供 python 相关文本对象，if/af 表示函数，ic/ac 表示类
	"Plug 'bps/vim-textobj-python', {'for': 'python'}

	" 提供 uri/url 的文本对象，iu/au 表示
	"Plug 'jceb/vim-textobj-uri'
endif	
" }}}

" 文件类型扩展 {{{
if index(g:bundle_group, 'filetypes') >= 0

	" C++ 语法高亮增强，支持 11/14/17 标准
	Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['c', 'cpp'] }

	" 额外语法文件
	Plug 'justinmk/vim-syntax-extra', { 'for': ['c', 'bison', 'flex', 'cpp'] }

	" python 语法文件增强
	"Plug 'vim-python/python-syntax', { 'for': ['python'] }

	" vim org-mode 
	"Plug 'jceb/vim-orgmode', { 'for': 'org' }
endif
" }}}

" airline {{{
" https://github.com/vim-airline/vim-airline
if index(g:bundle_group, 'airline') >= 0
	
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_powerline_fonts = 0
	let g:airline_exclude_preview = 1
	let g:airline_section_b = '%n'
	let g:airline_theme='deus'
	let g:airline#extensions#branch#enabled = 0
	let g:airline#extensions#syntastic#enabled = 0
	let g:airline#extensions#fugitiveline#enabled = 0
	let g:airline#extensions#csv#enabled = 0
	let g:airline#extensions#vimagit#enabled = 0
endif
" }}}

" NERDTree {{{
" https://github.com/scrooloose/nerdtree
if index(g:bundle_group, 'nerdtree') >= 0
	Plug 'scrooloose/nerdtree', {'on': ['NERDTree', 'NERDTreeFocus', 'NERDTreeToggle', 'NERDTreeCWD', 'NERDTreeFind'] }
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " 显示隐藏文件
	let g:NERDTreeShowHidden=1
    " 子窗口中不显示冗余帮助信息
    let g:NERDTreeMinimalUI = 1
	let g:NERDTreeDirArrows = 1
	let g:NERDTreeHijackNetrw = 0
	noremap <space>nn :NERDTree<cr>
	noremap <space>no :NERDTreeFocus<cr>
	noremap <space>nm :NERDTreeMirror<cr>
	noremap <space>nt :NERDTreeToggle<cr>
endif
" }}}

" 结束插件安装
call plug#end()

" vim:foldmethod=marker:foldlevel=0
