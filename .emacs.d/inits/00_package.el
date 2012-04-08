;; package.el
(when (require 'package nil t)
  ;; リポジトリにMarmaladeとELPAを追加
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/"))
  ;; パッケージにパスを通してロード
  (package-initialize))