# PROMPT
#PS1="[@${HOST%%.*} %1~]%(!.#.$) " # この辺は好み

PROMPT='%n@%m:%(5~,%-2~/.../%2~,%~)%(!.#.$) '
#PROMPT="%{[31m%}%/%%%{[m%} " ; color
#PROMPT="%{[36m%n@%m:%(5~,%-2~/.../%2~,%~)%(!.#.$)[m %}"


#RPROMPT="%T" # 右側に時間を表示する
setopt transient_rprompt # 右側まで入力がきたら時間を消す
setopt prompt_subst # 便利なプロント
bindkey -e # emacsライクなキーバインド

#補完候補に色をつける
eval `dircolors -b`
zstyle ':completion:*' list-colors di=34 fi=0

export LANG=ja_JP.UTF-8 # 日本語環境
export EDITOR=emacs # エディタはemacs
PATH=$PATH:/pub1/ensyu/compiler/util/
PATH=$PATH:/pub1/ensyu/compiler/visvm/
export PATH
export TERM=xterm-256color

autoload -U compinit # 強力な補完機能
compinit -u # このあたりを使わないとzsh使ってる意味なし
setopt autopushd # cdの履歴を表示
setopt pushd_ignore_dups # 同ディレクトリを履歴に追加しない
setopt auto_cd # 自動的にディレクトリ移動
setopt list_packed # リストを詰めて表示
setopt list_types # 補完一覧ファイル種別表示
#setopt correct #コマンドの間違いを修正

# 履歴
HISTFILE=~/.zsh_history # historyファイル
HISTSIZE=10000 # ファイルサイズ
SAVEHIST=10000 # saveする量
setopt hist_ignore_dups # 重複を記録しない
setopt hist_reduce_blanks # スペース排除
setopt share_history # 履歴ファイルを共有
setopt EXTENDED_HISTORY # zshの開始終了を記録


# history 操作まわり
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

## load user .zshrc configuration file
#
setopt complete_aliases
[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
[ -f ~/.alias ] && source ~/.alias
