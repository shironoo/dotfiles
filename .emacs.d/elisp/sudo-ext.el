<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>EmacsWiki: sudo-ext.el</title><link rel="alternate" type="application/wiki" title="Edit this page" href="http://www.emacswiki.org/emacs?action=edit;id=sudo-ext.el" /><link type="text/css" rel="stylesheet" href="/emacs/wiki.css" /><meta name="robots" content="INDEX,FOLLOW" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki" href="http://www.emacswiki.org/emacs?action=rss" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki: sudo-ext.el" href="http://www.emacswiki.org/emacs?action=rss;rcidonly=sudo-ext.el" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content"
      href="http://www.emacswiki.org/emacs/full.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content and diff"
      href="http://www.emacswiki.org/emacs/full-diff.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki including minor differences"
      href="http://www.emacswiki.org/emacs/minor-edits.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Changes for sudo-ext.el only"
      href="http://www.emacswiki.org/emacs?action=rss;rcidonly=sudo-ext.el" />
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-2101513-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/></head><body class="http://www.emacswiki.org/emacs"><div class="header"><a class="logo" href="http://www.emacswiki.org/emacs/%e3%82%b5%e3%82%a4%e3%83%88%e3%83%9e%e3%83%83%e3%83%97"><img class="logo" src="/emacs_logo.png" alt="[Home]" /></a><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/%e3%82%b5%e3%82%a4%e3%83%88%e3%83%9e%e3%83%83%e3%83%97">サイトマップ</a> <a class="local" href="http://www.emacswiki.org/emacs/%e6%9b%b4%e6%96%b0%e5%b1%a5%e6%ad%b4">更新履歴</a> <a class="local" href="http://www.emacswiki.org/emacs/%e3%83%8b%e3%83%a5%e3%83%bc%e3%82%b9">ニュース</a> <a class="local" href="http://www.emacswiki.org/emacs/%ef%bc%a5%ef%bd%8c%ef%bd%89%ef%bd%93%ef%bd%90%e3%82%bb%e3%82%af%e3%82%b7%e3%83%a7%e3%83%b3">Ｅｌｉｓｐセクション</a> <a class="local" href="http://www.emacswiki.org/emacs/%e5%88%a9%e7%94%a8%e6%89%8b%e5%bc%95">利用手引</a> </span>
<!-- Google CSE Search Box Begins  -->
<form class="tiny" action="http://www.google.com/cse" id="searchbox_004774160799092323420:6-ff2s0o6yi"><p>
<input type="hidden" name="cx" value="004774160799092323420:6-ff2s0o6yi" />
<input type="text" name="q" size="25" />
<input type="submit" name="sa" value="Search" />
</p></form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=searchbox_004774160799092323420%3A6-ff2s0o6yi"></script>
<!-- Google CSE Search Box Ends -->
<h1><a title="Click to search for references to this page" rel="nofollow" href="http://www.google.com/cse?cx=004774160799092323420:6-ff2s0o6yi&amp;q=%22sudo-ext.el%22">sudo-ext.el</a></h1></div><div class="wrapper"><div class="content browse"><p class="download"><a href="http://www.emacswiki.org/emacs/download/sudo-ext.el">Download</a></p><pre class="code"><span class="linecomment">;;;; sudo-ext.el --- sudo support</span>
<span class="linecomment">;; Time-stamp: &lt;2011-01-17 15:52:34 rubikitch&gt;</span>

<span class="linecomment">;; Copyright (C) 2010  rubikitch</span>

<span class="linecomment">;; Author: rubikitch &lt;rubikitch@ruby-lang.org&gt;</span>
<span class="linecomment">;; Keywords: unix</span>
<span class="linecomment">;; URL: http://www.emacswiki.org/cgi-bin/wiki/download/sudo-ext.el</span>

<span class="linecomment">;; This file is free software; you can redistribute it and/or modify</span>
<span class="linecomment">;; it under the terms of the GNU General Public License as published by</span>
<span class="linecomment">;; the Free Software Foundation; either version 3, or (at your option)</span>
<span class="linecomment">;; any later version.</span>

<span class="linecomment">;; This file is distributed in the hope that it will be useful,</span>
<span class="linecomment">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span>
<span class="linecomment">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span>
<span class="linecomment">;; GNU General Public License for more details.</span>

<span class="linecomment">;; You should have received a copy of the GNU General Public License</span>
<span class="linecomment">;; along with GNU Emacs; see the file COPYING.  If not, write to</span>
<span class="linecomment">;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,</span>
<span class="linecomment">;; Boston, MA 02110-1301, USA.</span>

<span class="linecomment">;;; Commentary:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; `sudo' support in Emacs.</span>
<span class="linecomment">;; Currently it has two features.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; * `sudoedit' command opens files as root using sudoedit program.</span>
<span class="linecomment">;;   This command needs emacsserver or gnuserv.</span>
<span class="linecomment">;;   Try M-x server-start or M-x gnuserv-start first.</span>
<span class="linecomment">;;   Be sure to you can run `sudoedit FILE' in shell.</span>
<span class="linecomment">;;   </span>
<span class="linecomment">;; * `sudo' support in shell execution in Emacs.</span>
<span class="linecomment">;;   In executing sudo shell command, password prompt is appeared if needed.</span>
<span class="linecomment">;;   * M-x compile</span>
<span class="linecomment">;;   * M-x grep</span>
<span class="linecomment">;;   * M-!</span>
<span class="linecomment">;;   * M-|</span>
<span class="linecomment">;;   * M-&</span>
<span class="linecomment">;;   * M-x executable-interpret</span>

<span class="linecomment">;;; Commands:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Below are complete command list:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  `sudo-K'</span>
<span class="linecomment">;;    Run `sudo -K'.</span>
<span class="linecomment">;;  `sudoedit'</span>
<span class="linecomment">;;    Run `sudoedit FILE' to edit FILE as root.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;; Customizable Options:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Below are customizable option list:</span>
<span class="linecomment">;;</span>

<span class="linecomment">;;; Installation:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Put sudo-ext.el to your load-path.</span>
<span class="linecomment">;; The load-path is usually ~/elisp/.</span>
<span class="linecomment">;; It's set in your ~/.emacs like this:</span>
<span class="linecomment">;; (add-to-list 'load-path (expand-file-name "~/elisp"))</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; And the following to your ~/.emacs startup file.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (server-start)</span>
<span class="linecomment">;; (require 'sudo-ext)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; No need more.</span>

<span class="linecomment">;;; Customize:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; All of the above can customize by:</span>
<span class="linecomment">;;      M-x customize-group RET sudo-ext RET</span>
<span class="linecomment">;;</span>


<span class="linecomment">;;; History:</span>

<span class="linecomment">;; See http://www.rubyist.net/~rubikitch/gitlog/sudo-ext.txt</span>

<span class="linecomment">;;; Code:</span>

(defvar sudo-ext-version "<span class="quote">0.1</span>")
(eval-when-compile (require 'cl))
(defgroup sudo-ext nil
  "<span class="quote">sudo-ext</span>"
  :group 'emacs)

(defun sudo-internal (continuation)
  (with-current-buffer (get-buffer-create "<span class="quote"> *sudo-process*</span>")
    (erase-buffer)
    
    (let ((proc (start-process "<span class="quote">sudo</span>" (current-buffer) "<span class="quote">sudo</span>" "<span class="quote">-v</span>")))
      (lexical-let ((continuation continuation)
                    (return-value 'sudo--undefined))

        (set-process-filter proc 'sudo-v-process-filter)
        (set-process-sentinel
         proc
         (lambda (&rest args) (setq return-value (funcall continuation))))
        (while (eq return-value 'sudo--undefined)
          (sit-for 0.01))
        return-value))))
(defun sudo-v ()
  "<span class="quote">Run `sudo -v'. Maybe requires password.</span>"
  (sudo-internal 'ignore))

(defun sudo-v-process-filter (proc string)
  (when (string-match "<span class="quote">password</span>" string)
    (process-send-string proc (concat (read-passwd "<span class="quote">Sudo Password: </span>") "<span class="quote">\n</span>"))))

(defmacro sudo-wrapper (args &rest body)
  "<span class="quote">Run `sudo -v' then execute BODY. ARGS are variables to pass to body.
Because BODY is executed as asynchronous function, ARGS should be lexically bound.</span>"
  `(lexical-let ,(mapcar (lambda (arg) (list arg arg)) args)
     (sudo-internal
      (lambda () ,@body))))
(put 'sudo-wrapper 'lisp-indent-function 1)

(defun sudo-K ()
  "<span class="quote">Run `sudo -K'.</span>"
  (interactive)
  (call-process "<span class="quote">sudo</span>" nil nil nil "<span class="quote">-K</span>"))

(defun sudoedit-editor ()
  (cond ((and (fboundp 'server-running-p)
              (server-running-p))
         "<span class="quote">emacsclient</span>")
        ((and (fboundp 'gnuserv-running-p)
              (gnuserv-running-p))
         "<span class="quote">gnuclient</span>")
        (t
         (error (substitute-command-keys "<span class="quote">Not running server. Start server by \\[server-start] or \\[gnuserv-start]</span>")))))

(defun sudoedit (file)
  "<span class="quote">Run `sudoedit FILE' to edit FILE as root.
Be sure to you can run `sudoedit FILE' in shell.</span>"
  (interactive "<span class="quote">FSudoedit: </span>")
  (sudo-wrapper (file)
    (let ((process-environment (copy-sequence process-environment)))
      (setenv "<span class="quote">EDITOR</span>" (sudoedit-editor))
      (setenv "<span class="quote">VISUAL</span>" (sudoedit-editor))
      (start-process "<span class="quote">sudoedit</span>" (get-buffer-create "<span class="quote"> *sudoedit*</span>")
                    "<span class="quote">sudoedit</span>" file))))
<span class="linecomment">;; (sudoedit "/etc/fstab")</span>
<span class="linecomment">;; (sudo-K)</span>

(defmacro sudo-advice (func argpos)
  "<span class="quote">Activate advice to make FUNC sudo-awared. ARGPOS is command position.</span>"
  `(defadvice ,func (before sudo-advice activate)
     (when (string-match "<span class="quote">\\bsudo\\b</span>" (ad-get-arg ,argpos))
       (sudo-v))))
<span class="linecomment">;; (sudo-K)</span>
<span class="linecomment">;; (shell-command "sudo sh -c 'echo $USER'")</span>
<span class="linecomment">;; (async-shell-command "sudo sh -c 'echo $USER'")</span>
(sudo-advice shell-command 0)
(sudo-advice shell-command-on-region 2)
(sudo-advice compilation-start 0)
<span class="linecomment">;;; Disable it because `shell-command-to-string' is too low-level function.</span>
<span class="linecomment">;;; If internally used shell command contains a string `sudo',</span>
<span class="linecomment">;;; password prompt may be appeared. It disturbs commands like `anything'.</span>
<span class="linecomment">;; (sudo-advice shell-command-to-string 0)</span>

(provide 'sudo-ext)

<span class="linecomment">;; How to save (DO NOT REMOVE!!)</span>
<span class="linecomment">;; (progn (git-log-upload) (emacswiki-post "sudo-ext.el"))</span>
<span class="linecomment">;;; sudo-ext.el ends here</span></span></pre></div><div class="wrapper close"></div></div><div class="footer"><hr /><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/%e3%82%b5%e3%82%a4%e3%83%88%e3%83%9e%e3%83%83%e3%83%97">サイトマップ</a> <a class="local" href="http://www.emacswiki.org/emacs/%e6%9b%b4%e6%96%b0%e5%b1%a5%e6%ad%b4">更新履歴</a> <a class="local" href="http://www.emacswiki.org/emacs/%e3%83%8b%e3%83%a5%e3%83%bc%e3%82%b9">ニュース</a> <a class="local" href="http://www.emacswiki.org/emacs/%ef%bc%a5%ef%bd%8c%ef%bd%89%ef%bd%93%ef%bd%90%e3%82%bb%e3%82%af%e3%82%b7%e3%83%a7%e3%83%b3">Ｅｌｉｓｐセクション</a> <a class="local" href="http://www.emacswiki.org/emacs/%e5%88%a9%e7%94%a8%e6%89%8b%e5%bc%95">利用手引</a> </span><span class="translation bar"><br />  <a class="translation new" rel="nofollow" href="http://www.emacswiki.org/emacs?action=translate;id=sudo-ext.el;missing=de_es_fr_it_ja_ko_pt_ru_se_zh">Add Translation</a></span><span class="edit bar"><br /> <a class="edit" accesskey="e" title="Click to edit this page" rel="nofollow" href="http://www.emacswiki.org/emacs?action=edit;id=sudo-ext.el">Edit this page</a> <a class="history" rel="nofollow" href="http://www.emacswiki.org/emacs?action=history;id=sudo-ext.el">View other revisions</a> <a class="admin" rel="nofollow" href="http://www.emacswiki.org/emacs?action=admin;id=sudo-ext.el">Administration</a></span><span class="time"><br /> Last edited 2011-01-17 07:10 UTC by <a class="author" title="from 119-171-30-234.rev.home.ne.jp" href="http://www.emacswiki.org/emacs/rubikitch">rubikitch</a> <a class="diff" rel="nofollow" href="http://www.emacswiki.org/emacs?action=browse;diff=2;id=sudo-ext.el">(diff)</a></span><div style="float:right; margin-left:1ex;">
<!-- Creative Commons License -->
<a href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="CC-GNU GPL" style="border:none" src="/pics/cc-GPL-a.png" /></a>
<!-- /Creative Commons License -->
</div>

<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
 xmlns:dc="http://purl.org/dc/elements/1.1/"
 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<Work rdf:about="">
   <license rdf:resource="http://creativecommons.org/licenses/GPL/2.0/" />
  <dc:type rdf:resource="http://purl.org/dc/dcmitype/Software" />
</Work>

<License rdf:about="http://creativecommons.org/licenses/GPL/2.0/">
   <permits rdf:resource="http://web.resource.org/cc/Reproduction" />
   <permits rdf:resource="http://web.resource.org/cc/Distribution" />
   <requires rdf:resource="http://web.resource.org/cc/Notice" />
   <permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" />
   <requires rdf:resource="http://web.resource.org/cc/ShareAlike" />
   <requires rdf:resource="http://web.resource.org/cc/SourceCode" />
</License>
</rdf:RDF>
-->

<p class="legal">
This work is licensed to you under version 2 of the
<a href="http://www.gnu.org/">GNU</a> <a href="/GPL">General Public License</a>.
Alternatively, you may choose to receive this work under any other
license that grants the right to use, copy, modify, and/or distribute
the work, as long as that license imposes the restriction that
derivative works have to grant the same rights and impose the same
restriction. For example, you may choose to receive this work under
the
<a href="http://www.gnu.org/">GNU</a>
<a href="/FDL">Free Documentation License</a>, the
<a href="http://creativecommons.org/">CreativeCommons</a>
<a href="http://creativecommons.org/licenses/sa/1.0/">ShareAlike</a>
License, the XEmacs manual license, or
<a href="/OLD">similar licenses</a>.
</p>
</div>
</body>
</html>
