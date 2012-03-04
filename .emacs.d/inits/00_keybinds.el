;; C-hをBSにバインド
(global-set-key "\C-h" 'backward-delete-char)

;; 日付の挿入
(defun my-get-date-gen (form) (insert (format-time-string form)))
(defun my-get-date () (interactive) (my-get-date-gen "%Y年%m月%d日"))
(defun my-get-time () (interactive) (my-get-date-gen "%H時%M分"))
(defun my-get-dtime () (interactive) (my-get-date-gen "%Y年%m月%d日 %H時%M分"))
(global-set-key "\C-c\C-d" 'my-get-date)
(global-set-key "\C-c\C-t" 'my-get-time)
(global-set-key "\C-c\ed" 'my-get-dtime)
