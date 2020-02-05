# .bash_profile

# Gitのブランチ名をターミナルに表示させる
# ------------------------------------------
# 1. git-prompt.shを使う場合。少し重い。

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/git-prompt.sh

# Gitブランチの状況を*+%で表示
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# ブランチ名を表示できるように反映
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\[\e[1;36m\]\]\$($(__git_ps1))\[\e[0m\]\]\n\$ "

# 2. git-prompt.shを使わない場合。軽い。
# Gitブランチ名を表示させるスクリプト
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# ブランチ名を表示できるように反映
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\[\e[1;36m\]\] \$(parse_git_branch)\[\e[0m\]\]\n\$ "

# ------------------------------------------


# 出力の後に改行を入れる
# ------------------------------------------
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

# ------------------------------------------


# .bashrcを読み込ませる
# ------------------------------------------
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# ------------------------------------------


# Vagrantの環境などで、主に使用している表示設定。(太文字や、gitのブランチを表示させるようにしている)
# ------------------------------------------
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[1;32m\]\]\u\[\e[0m\]\]\[\e[1;32m\]\]@\[\e[0m\]\]\[\e[1;32m\]\]\h\[\e[0m\]\] \[\e[1;33m\]\]\w\[\e[0m\]\]\[\e[1;36m\]\]\$(parse_git_branch)\[\e[0m\]\]\n\$ "

# ------------------------------------------