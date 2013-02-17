(global-set-key "\C-\\" 'toggle-input-method)

(when (require 'mozc nil t)
  (set-language-environment "japanese")
  (setq default-input-method "japanese-mozc")
  (setq mozc-candidate-style 'overlay)
  ;(setq mozc-color "blue")

(setq mozc-color "SeaGreen4")
(setq mozc-off-color "PaleGreen3")

(defun mozc-change-cursor-color ()
  (if mozc-mode
      (set-cursor-color mozc-color)
    (set-cursor-color mozc-off-color)))

(add-hook 'input-method-activate-hook
          (lambda () (mozc-change-cursor-color)))
(add-hook 'input-method-inactivate-hook
          (lambda () (mozc-change-cursor-color)))

  ;; faces
(setq color1 "#5f005f")
(setq color2 "#ffaf00")
(setq color3 "#5f00d7")
(setq color4 "brightwhite")
  (set-face-attribute 'mozc-cand-overlay-even-face 'nil
                      :background color1 :foreground color4)
  (set-face-attribute 'mozc-cand-overlay-odd-face 'nil
                      :background color1 :foreground color4)
  (set-face-attribute 'mozc-cand-overlay-focused-face 'nil
                      :background color2 :foreground "#5f0000")
  (set-face-attribute 'mozc-cand-overlay-footer-face 'nil
                      :background color3 :foreground "#5f00ff")
;  (set-face-attribute 'mozc-cand-overlay-even-face 'nil
;                      :background "aquamarine" :foreground "black")
;  (set-face-attribute 'mozc-cand-overlay-odd-face 'nil
;                      :background "aquamarine" :foreground "black")
)
