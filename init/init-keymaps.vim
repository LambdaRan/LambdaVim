"init-keymaps.vim 基本配置 
"
" Maintainer: LambdaRan	
" Last change:	2019-06-17 22:56:16
"

" vim: set ts=4 sw=4 tw=78 noet :
    
" INSERT 模式下使用 EMACS 键位
inoremap <c-a> <home> 
inoremap <c-e> <end> 
inoremap <c-d> <del> 
inoremap <c-_> <c-k>

" 设置 CTRL+HJKL 移动光标（INSERT 模式偶尔需要移动的方便些） " 使用
" SecureCRT/XShell 等终端软件需设置：Backspace sends delete "
" 详见：http://www.skywind.me/blog/archives/2021
"noremap <C-h> <left> 
"noremap <C-j> <down> 
"noremap <C-k> <up>  
"noremap <C-l> <right> 

"inoremap <C-h> <left> 
"inoremap <C-j> <down> 
"inoremap <C-k> <up> 
"inoremap <C-l> <right>

