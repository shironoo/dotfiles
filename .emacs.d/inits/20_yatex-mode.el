;; latexmk
;(setq tex-command "platex")
(setq tex-command "latexmk -pdf")

;yatex-mode
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
; previous key-bind
(setq YaTeX-inhibit-prefix-letter nil)
; kanji code
; 1 = Shift_JIS
; 2 = ISO-2022-JP
; 3 = EUC-JP
; 4 = UTF-8
(setq YaTeX-kanji-code 4)
