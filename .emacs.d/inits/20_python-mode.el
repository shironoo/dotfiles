;; python-mode
(require 'python)
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

(require 'jedi)
;(add-hook 'python-mode-hook 'jedi:ac-setup)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:tooltip-method 'nil)
(set-face-attribute 'jedi:highlight-function-argument nil
                    :foreground "chocolate")
