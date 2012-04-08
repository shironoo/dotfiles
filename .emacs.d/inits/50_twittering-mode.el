(require 'twittering-mode nil t)

;; save oauth token
(setq twittering-use-master-password t)
;(setq twittering-private-info-file "~/.emacs.d/elisp/twittering/twittering-mode.gpg")

;; アイコン表示
(setq twittering-icon-mode t)

;; 更新頻度
(setq twittering-timer-interval 120)

;; 起動時に読み込むTL
(setq twittering-initial-timeline-spec-string
      '("DHC_6/airc"
	"shironoo/lab"
;	"shironoo/nu"
        ":replies"
        ":home"))


; mode-line に API の残数を表示する
(setq twittering-display-remaining t)

; mode-lineに未読数を表示
(twittering-enable-unread-status-notifier)

(add-hook 'twittering-mode-hook
          (lambda ()
            (set-face-bold-p 'twittering-username-face t)
            (set-face-foreground 'twittering-username-face "chocolate")
            (set-face-foreground 'twittering-uri-face "cyan")
;            (setq twittering-status-format "%i %p%s:\n%FOLD{%T}\n%r %R [%@]")
	    (setq twittering-status-format "%i %s,  [%@]:\n  %t")
	    (setq twittering-retweet-format " RT @%s: %t")
            ;; "F"でお気に入り
            ;; "R"でリツイートできるようにする
            (define-key twittering-mode-map (kbd "F") 'twittering-favorite)
            (define-key twittering-mode-map (kbd "R") 'twittering-native-retweet)
            ;; "<"">"で先頭、最後尾にいけるように
            (define-key twittering-mode-map (kbd "<") (lambda () (interactive) (goto-char (point-min))))
            (define-key twittering-mode-map (kbd ">") (lambda () (interactive) (goto-char (point-max))))))


; notify-sendを使ってリプライを通知
;    (progn      (add-hook 'twittering-new-tweets-hook
;        (lambda ()
;          (dolist (el twittering-new-tweets-statuses)
;            (if (string-match twittering-username (cdr (assoc 'text el)))
;            (start-process "twittering-notify" nil "notify-send"
;                       "-i" "gtk-about"
;                           (cdr (assoc 'user-screen-name el))
;                           (cdr (assoc 'text el))
;                           ))))))

