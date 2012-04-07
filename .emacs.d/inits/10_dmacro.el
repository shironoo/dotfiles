;; マクロの利用
(defconst *dmacro-key* "\C-t" "繰返し指定キー")
;(defconst *dmacro-key* "\C-u" "繰返し指定キー")
(global-set-key *dmacro-key* 'dmacro-exec)
(autoload 'dmacro-exec "dmacro" nil t)
