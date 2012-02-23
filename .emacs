;; language-environment setting
(set-language-environment "Japanese")
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;(set-face-attribute 'default nil
;   :family "monaco"
;   :height 130)

;; load-pathの設定
(setq load-path (cons (expand-file-name "~/.emacs.d/elisp")        load-path))

(require 'color-theme)
(color-theme-initialize)
;(color-theme-deep-blue)
(color-theme-clarity)
;(color-theme-lethe)

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

;(require 'mozc)
;(set-language-environment "japanese")
;(setq default-input-method "japanese-mozc")

;; C-\で入力をトグル
(global-set-key "\C-\\" 'ibus-toggle)
;; Hide MenuBar
;(menu-bar-mode -1)
;; ツールバーを表示しない
(tool-bar-mode 0)
;; C-hをBSにバインド
(global-set-key "\C-h" 'backward-delete-char)
;; タイトルをファイル名に
(setq frame-title-format "%b")
;; 起動時の画面はいらない
(setq inhibit-startup-message t)
;;fontにMonacoを使用
;(add-to-list 'default-frame-alist '(font . "monaco"))
;;fontにRictyを使用
(add-to-list 'default-frame-alist '(font . "ricty-13.5"))
;; imaximaの設定
;;(push "/usr/local/share/emacs/site-lisp" load-path)
;(autoload 'imaxima "imaxima" "Maxima frontend" t)
;(autoload 'imath "imath" "Interactive Math mode" t)
;(setq imaxima-fnt-size "LARGE")
;(setq imaxima-image-type 'png)

;; 対応する括弧を強調
(show-paren-mode t)

(put 'set-goal-column 'disabled nil)

;; compile
(add-hook 'set-language-environment-hook 
	  (lambda ()
	    (when (equal "ja_JP.utf8" (getenv "LANG"))
	      (setq default-process-coding-system '(utf-8 . utf-8))
	      (setq default-file-name-coding-system 'utf-8))
	    (when (equal "Japanese" current-language-environment)
	      (setq default-buffer-file-coding-system 'utf-8))))

; Xを使っている場合の起動を高速化するらしいがよくわかってない
;(modify-frame-parameters nil '((wait-for-wm . nil)))

 ; migemoを有効にする
(require 'migemo)

; xのクリップボードを使えるように
(setq x-select-enable-clipboard t)

(require 'zlc)

;; auto-completeを有効にする
(require 'auto-complete)
(require 'auto-complete-config)    ; 必須ではないですが一応
(global-auto-complete-mode t)

;; マクロの利用
(defconst *dmacro-key* "\C-t" "繰返し指定キー")
(global-set-key *dmacro-key* 'dmacro-exec)
(autoload 'dmacro-exec "dmacro" nil t)

;; python-mode
;(require 'python-mode)
;(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
;(setq interpreter-mode-alist (cons '("python" . python-mode)
;                                   interpreter-mode-alist))
;(autoload 'python-mode "python-mode" "Python editing mode." t)
;tabをスペースで置換しない
;(add-hook 'python-mode-hook
;          (function (lambda ()
;                      (setq tab-width py-indent-offset)
;                      (setq indent-tabs-mode t))))

;; pymacs
;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;;  '(add-to-list 'pymacs-load-path "YOUR-PYMACS-DIRECTORY"))

;; auto-install
;(require 'auto-install)
;(setq auto-install-directory "~/elisp/")
;(auto-install-update-emacswiki-package-name t)
;(auto-install-compatibility-setup)             ; 互換性確保

;; anything
(defvar org-directory "")
(require 'anything-startup) 

; C-x bでバッファリストをミニバッファに表示する。超便利。
(iswitchb-mode 1)

;; backup-file-directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))

;; 日付の挿入
(defun my-get-date-gen (form) (insert (format-time-string form)))
(defun my-get-date () (interactive) (my-get-date-gen "%Y年%m月%d日"))
(defun my-get-time () (interactive) (my-get-date-gen "%H時%M分"))
(defun my-get-dtime () (interactive) (my-get-date-gen "%Y年%m月%d日 %H時%M分"))
(global-set-key "\C-c\C-d" 'my-get-date)
(global-set-key "\C-c\C-t" 'my-get-time)
(global-set-key "\C-c\ed" 'my-get-dtime)

(autoload 'flex-mode "flex-mode" "flex" t)
(setq auto-mode-alist

    (append '(("\\.l$" . flex-mode))
             auto-mode-alist))

(setq scroll-step 1)

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
; C++モードでは flymakeを有効にする
;(add-hook 'c++-mode-hook
;	  '(lambda ()
;	     (flymake-mode t)))

