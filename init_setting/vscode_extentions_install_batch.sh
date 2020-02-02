#!/bin/bash
 
# Visual Studio Code :: Package list
pkglist=(
# ここの中身に拡張機能名を一行ずつ書いていく
# 以下、例
# MS-CEINTL.vscode-language-pack-ja
# mosapride.zenkaku
)
 
for var in ${pkglist[@]}
do
    code --install-extension $var
done
