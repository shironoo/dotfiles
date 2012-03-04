;; ibus-mode
(require 'ibus)
;; Turn on ibus-mode automatically after loading .emacs
(add-hook 'after-init-hook 'ibus-mode-on)
;; Use C-SPC for Set Mark command
(ibus-define-common-key ?\C-\s nil)
;; Use C-/ for Undo command
(ibus-define-common-key ?\C-/ nil)
;; Change cursor color depending on IBus status
(setq ibus-cursor-color '("limegreen" "white" "blue"))
;; C-\で入力をトグル
(global-set-key "\C-\\" 'ibus-toggle)

;(require 'mozc)
;(set-language-environment "japanese")
;(setq default-input-method "japanese-mozc")
