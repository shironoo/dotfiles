(require 'python-mode)
(custom-set-variables
    '(py-force-py-shell-name-p t)
    '(py-shell-name "ipython2"))
(ac-config-default)

(add-hook 'python-mode-hook
          '(lambda ()
             (local-set-key "\C-h" 'py-electric-backspace)))
