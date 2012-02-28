;; latexmk
;(setq tex-command "platex")
(setq tex-command "latexmk -pv -dvi")

;yatex-mode
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
; previous key-bind
(setq YaTeX-inhibit-prefix-letter nil)
; tex -> euc-jp
(setq YaTeX-kanji-code 3)
