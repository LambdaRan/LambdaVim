" init.vim 初始化配置
"
" Maintainer: LambdaRan	
" Last change:	2019-06-17 21:22:16
"
" 防止重复加载 
if get(s:, 'loaded', 0) != 0     
    finish 
else     
    let s:loaded = 1
endif  
" 取得本文件所在的目录 
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')  
" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'  
" 将 LambdaVim 目录加入 runtimepath 
exec 'set rtp+='.s:home  
" 将 ~/.vim 目录加入 runtimepath (有时候 vim 不会自动帮你加入） 
set rtp+=~/.vim

" 模块加载
" 加载基础配置 
LoadScript init/init-basic.vim  
" 插件加载 
LoadScript init/init-plugins.vim  
" 自定义按键 
LoadScript init/init-keymaps.vim
