;;; build.el --- Description -*- lexical-binding: t; -*-

;; Copyright (C) 2026 quoise-ps

;; Author: quoise-ps <quoise.ps<dot>gmail.com>
;; Keywords: ox-hugo, org-mode
;; License: MIT

;;; Commentary:

;; Build script for exporting from org.
;;
;; The following program uses HaoZeke's site files github.com/HaoZeke/haozeke.github.io,
;; due to a 9.7 change, see https://github.com/kaushalmodi/ox-hugo/pull/755.
;; 
;; Please always be wary of evaluating any script with `(setq enable-local-variables :all)`.

;;; Code:


;; Setup
(message "\n==== Setup package repos ====")
(message "\nUsing HaoZeke's Ox-Hugo fork")
;; Here, we use HaoZeke's setup and ox-hugo.el fork that works with Org 9.7+
(load-file (expand-file-name "setup-ox-hugo.el" "./setup/"))
;; Also copying lines from HaoZeke's makefile
(setq org-element-use-cache t)
(org-element-cache-reset)

;; Enable local variables
(message "\n==== (Unsafe) Enabling all variables ====")
(setq enable-local-variables :all)

;; Export content from org to Hugo md
(message "\n==== Exporting Hugo markdown ====")
(with-current-buffer (find-file "./rns-shadow-guide.org")
  (org-hugo-export-wim-to-md :all-subtrees nil nil))

;; End
(message "\n==== Export complete ====")

;;; build.el ends here
