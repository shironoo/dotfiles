;; redo+
(when (require 'redo+ nil t)
  ;; C-'でredo
  (global-set-key (kbd "C-'") 'redo)
  )
