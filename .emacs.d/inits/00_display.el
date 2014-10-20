
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
(if window-system (tool-bar-mode 0))

;; タイトルをファイル名に
(setq frame-title-format "%b")

;; 起動時の画面はいらない
(setq inhibit-startup-message t)

;; 対応する括弧を強調
(setq show-paren-delay 0) ; 表示までの秒数
(show-paren-mode t) ; 有効化
;; parenのスタイル
(setq show-paren-style 'parenthesis)
;(setq show-paren-style 'expression)
;; フェイスを変更する
;(set-face-background 'show-paren-match-face nil)
;(set-face-underline-p 'show-paren-match-face "yellow")

;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")
