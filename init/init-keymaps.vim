"init-keymaps.vim 基本配置 
"
" Maintainer: LambdaRan	
" Last change:	2019-06-17 22:56:16
"

" vim: set ts=4 sw=4 tw=78 noet :
    
" INSERT 模式下使用 EMACS 键位
"inoremap <c-a> <home> 
"inoremap <c-e> <end> 
"inoremap <c-d> <del> 
"inoremap <c-_> <c-k>

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

" ALT 键移动增强 {{{

" ALT+h/l 快速左右按单词移动（正常模式+插入模式）
noremap <m-h> b
noremap <m-l> w
inoremap <m-h> <c-left>
inoremap <m-l> <c-right>

" ALT+j/k 逻辑跳转下一行/上一行（按 wrap 逻辑换行进行跳转） 
noremap <m-j> gj
noremap <m-k> gk
inoremap <m-j> <c-\><c-o>gj
inoremap <m-k> <c-\><c-o>gk

" 命令模式下的相同快捷
cnoremap <m-h> <c-left>
cnoremap <m-l> <c-right>

" ALT+y 删除到行末
noremap <m-y> d$
inoremap <m-y> <c-\><c-o>d$
" }}}
