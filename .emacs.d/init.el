;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;ロードパス追加設定;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq load-path
      (append
       (list
        (expand-file-name "~/.emacs.d/")
        (expand-file-name "~/.emacs.d/elisp/")
        (expand-file-name "~/.emacs.d/elisp/anything/")
        (expand-file-name "~/.emacs.d/elisp/apel-10.8")
	(expand-file-name "~/.emacs.d/elisp/elscreen")
        (expand-file-name "~/.emacs.d/elisp/yatex/")
        ;(expand-file-name "~/.emacs.d/elisp/auto-complete/")
        (expand-file-name "~/.emacs.d/elisp/color-theme/")
	(expand-file-name "~/.emacs.d/elisp/riece-8.0.0/")
	(expand-file-name "~/.emacs.d/elisp/twittering/")
        )
       load-path))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;   init-loader   ;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;設定ファイルはinits以下に置いていて、init-loaderによって読み込まれる
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

(if (not (equal (init-loader-error-log) ""))
    (init-loader-show-log))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("42c7f1aa7a3db4ab8efabf1d10c158c2f1414ac57cb207cde815eadad72170d2" "6cfe5b2f818c7b52723f3e121d1157cf9d95ed8923dbc1b47f392da80ef7495d" "e9a1226ffed627ec58294d77c62aa9561ec5f42309a1f7a2423c6227e34e3581" "211bb9b24001d066a646809727efb9c9a2665c270c753aa125bace5e899cb523" default)))
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(safe-local-variable-values (quote ((TeX-master . "../graduation_thesis") (TeX-master . "t") (TeX-master . "graduation_thesis")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
