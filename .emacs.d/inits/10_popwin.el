(require 'popwin-yatex)
;(require 'popwin)

(setq display-buffer-function 'popwin:display-buffer)

(setq anything-samewindow nil)
(push '("*anything*" :height 20) popwin:special-display-config)

(push '("*YaTeX-typesetting*") popwin:special-display-config)
