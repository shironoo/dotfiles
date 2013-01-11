;; C-hをBSにバインド
(global-set-key "\C-h" 'backward-delete-char)

;; bufferの切り替え
(global-set-key (kbd "C-o") 'other-window)

;; anythingを代わりに使用
(define-key global-map (kbd "\C-x b") 'anything)
