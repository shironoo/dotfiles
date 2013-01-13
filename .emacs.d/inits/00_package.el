;; package.el
(when (require 'package nil t)
  ;; リポジトリにMarmalade,ELPA,MELPAを追加
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/"))
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
  ;; パッケージにパスを通してロード
  (package-initialize))
