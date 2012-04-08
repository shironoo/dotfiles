;; C-hをBSにバインド
(global-set-key "\C-h" 'backward-delete-char)

;; C-,で次のバッファへ切り替え
(global-set-key [?\C-,] 'other-window)
;; C-.で前のバッファへ切り替え
(defun back-window ()
  (interactive)
  (other-window -1))
(global-set-key [?\C-.] 'back-window)