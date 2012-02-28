
;; font setting
;(set-face-attribute 'default nil
;   :family "monaco"
;   :height 130)

;;fontにRictyを使用
(add-to-list 'default-frame-alist '(font . "ricty-13.5"))
;;fontにMonacoを使用
;(add-to-list 'default-frame-alist '(font . "monaco"))

;; Hide MenuBar
;(menu-bar-mode -1)

;; ツールバーを表示しない
(tool-bar-mode 0)

;; タイトルをファイル名に
(setq frame-title-format "%b")

;; 起動時の画面はいらない
(setq inhibit-startup-message t)

;; 対応する括弧を強調
(show-paren-mode t)
(put 'set-goal-column 'disabled nil)
