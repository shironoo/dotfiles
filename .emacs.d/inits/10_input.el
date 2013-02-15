;; ibus-mode
;(require 'ibus)
;; Turn on ibus-mode automatically after loading .emacs
;(add-hook 'after-init-hook 'ibus-mode-on)
;; Use C-SPC for Set Mark command
;(ibus-define-common-key ?\C-\s nil)
;; Use C-/ for Undo command
;(ibus-define-common-key ?\C-/ nil)
;; Change cursor color depending on IBus status
;(setq ibus-cursor-color '("limegreen" "white" "blue"))
;; C-\で入力をトグル
;(global-set-key "\C-\\" 'ibus-toggle)

(when (require 'mozc nil t)
  (setq default-input-method "japanese-mozc")
  (setq mozc-candidate-style 'overlay)

  ;; faces
  (set-face-attribute 'mozc-cand-overlay-even-face 'nil
                      :background "aquamarine" :foreground "black")
  (set-face-attribute 'mozc-cand-overlay-odd-face 'nil
                      :background "aquamarine" :foreground "black"))
(global-set-key "\C-\\" 'toggle-input-method)
