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

;; C-x bでバッファリストをミニバッファに表示する。超便利。
(iswitchb-mode 1)

;; バックアップファイルとオートセーブファイルの置場所
(add-to-list 'backup-directory-alist
      (cons "." "~/.emacs.d/backup/"))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backup/") t)))

;; xのクリップボードを使えるように
(setq x-select-enable-clipboard t)

;; TAB幅を4に
(setq-default tab-width 4)

;; インデントにTAB文字を使用しない
(setq-default indent-tabs-mode nil)

;; ファイルが#!から始まる場合，実行権限をつけて保存する
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)
