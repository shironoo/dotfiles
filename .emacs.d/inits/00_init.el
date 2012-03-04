;; スクロール量を一行単位に
(setq scroll-step 1)

;; compile
(add-hook 'set-language-environment-hook 
	  (lambda ()
	    (when (equal "ja_JP.utf8" (getenv "LANG"))
	      (setq default-process-coding-system '(utf-8 . utf-8))
	      (setq default-file-name-coding-system 'utf-8))
	    (when (equal "Japanese" current-language-environment)
	      (setq default-buffer-file-coding-system 'utf-8))))

; C-x bでバッファリストをミニバッファに表示する。超便利。
(iswitchb-mode 1)

;; backup-file-directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))

; xのクリップボードを使えるように
(setq x-select-enable-clipboard t)
