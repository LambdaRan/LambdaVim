#!/bin/bash

function download_LambdaVim()
{
    if [ -e "~/.vim" ]; then
        mv ~/.vim ~/.vim_old
    fi
    mkdir ~/.vim
    cd ~/.vim
    git clone git@github.com:LambdaRan/LambdaVim.git
    
    root_dir="~/.vim/LambdaRan"
    if [ -e "~/.vimrc" ]; then
        # 在原vimrc文件中追加内容
        cat ${root_dir}/vimrc_append >> ~/.vimrc
    else
        cp ${root_dir}/vimrc_template ~/.vimrc
    fi
}
# 下载插件管理软件vim-plug
function download_vim_plug()
{
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

# 安装vim插件 
function install_vim_plugin() 
{     
    vim -c "PlugInstall" -c "q" -c "q" 
}

function main()
{
    echo "下载并安装LambdaVim"
    download_LambdaVim
    echo "下载插件管理器，并安装默认插件"
    download_vim_plug
    install_vim_plug

    echo "Just enjoy it!"
}

#调用main函数
main
