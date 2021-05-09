#!/bin/bash
 
# Visual Studio Code :: Package list
pkglist=(
# ここの中身に拡張機能名を一行ずつ書いていく
# code コマンドを使えないと動かない
# 出力方法は $ code --list-extensions | xargs -L 1 echo code --install-extension
# 2021/05/09 現在

abusaidm.html-snippets
CoenraadS.bracket-pair-colorizer-2
ecmel.vscode-html-css
esbenp.prettier-vscode
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
mosapride.zenkaku
ms-azuretools.vscode-docker
MS-CEINTL.vscode-language-pack-ja
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
PKief.material-icon-theme
rebornix.ruby
ritwickdey.LiveServer
streetsidesoftware.code-spell-checker
thekalinga.bootstrap4-vscode
vincaslt.highlight-matching-tag
WallabyJs.quokka-vscode
wingrunr21.vscode-ruby
xabikos.JavaScriptSnippets
Zignd.html-css-class-completion

)
 
for var in ${pkglist[@]}
do
  code --install-extension $var
done
