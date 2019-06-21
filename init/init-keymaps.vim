"init-keymaps.vim 基本配置 
"
" Maintainer: LambdaRan	
" Last change:	2019-06-17 22:56:16
"

" vim: set ts=4 sw=4 tw=78 noet :
    
" INSERT 模式下使用 EMACS 键位


" ALT 键移动增强 {{{

" ALT+h/l 快速左右按单词移动（正常模式+插入模式）
noremap <M-h> b
noremap <M-l> w
noremap <M-j> gj
noremap <M-k> gk
noremap <M-y> d$

inoremap <M-h> <c-left>
inoremap <M-l> <c-right>
inoremap <M-j> <c-\><c-o>gj
inoremap <M-k> <c-\><c-o>gk
inoremap <M-y> <c-\><c-o>d$

" 命令模式下的相同快捷
cnoremap <m-h> <c-left>
cnoremap <m-l> <c-right>

" ALT+y 删除到行末
noremap <m-y> d$
inoremap <m-y> <c-\><c-o>d$
" }}}

" Tab标签快捷键配置 {{{ 
" :Te  全称是 :Texplorer 命令创建标签，在gVIM中不能使用
" gt   – 到下一个页
" gT  – 到前一个页
" {i} gt   – i是数字，到指定页，比如：5 gt 就是到第5页
" :tabm {n} 来切换tab
" gvim应该是：Ctrl+PgDn 和 Ctrl+PgUp 来在各个页中切换
" :tabs 列出tab
" :tabclose [i] 关闭
" :bufdo tab split 将buffer
if has('gui_running') 
    set winaltkeys=no
    noremap <silent><tab>m :tabnew<cr>
    noremap <silent><tab>e :tabclose<cr>
    noremap <silent><tab>n :tabnext<cr>
    noremap <silent><tab>p :tabprevious<cr>
    noremap <silent><tab>l :tabs<cr>

    inoremap <silent><c-tab>t :tabnext<cr>
    inoremap <silent><c-tab>p :tabprevious<cr>

    " ALT+N 切换 tab
    noremap <silent><m-1> :tabn 1<cr>
    noremap <silent><m-2> :tabn 2<cr>
    noremap <silent><m-3> :tabn 3<cr>
    noremap <silent><m-4> :tabn 4<cr>
    noremap <silent><m-5> :tabn 5<cr>
    noremap <silent><m-6> :tabn 6<cr>
    noremap <silent><m-7> :tabn 7<cr>
    noremap <silent><m-8> :tabn 8<cr>
    noremap <silent><m-9> :tabn 9<cr>
    noremap <silent><m-0> :tabn 10<cr>
endif
" }}}
" vim:foldmethod=marker:foldlevel=0