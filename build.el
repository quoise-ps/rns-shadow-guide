;;; build.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 Shom Bandopadhaya
;;
;; Author: Shom Bandopadhaya <https://github.com/shombando>, Quoise <https://github.com/quoise-ps>
;; Maintainer: Shom Bandopadhaya <shom@bandopadhaya.com>
;; Created: October 04, 2021
;; Modified: October 16, 2026
;; Version: 0.0.2
;; Keywords: emacs org hugo
;; Homepage: https://quoise-ps.github.io/rns-shadow-guide/
;; Package-Requires: ((emacs "29.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary: modified automated build for ox-hugo org mode website from Shom.
;;
;;  Description: BUild script for exporting from org. Do *not* run this locally without removing "(setq enable-local-variables :all)".
;;
;;; Code:

;; Setup
(message "\n==== Setup package repos ====")
(require 'package)
(setq package-user-dir (expand-file-name "./.packages"))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Initialize the package system
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Install and dependencies
(message "\n==== Installing depedencies ====")
(package-install 'ox-hugo)
(require 'org-id)
(require 'ox-hugo)

;; Enable local variables
(message "\n==== (Unsafe) Enabling all variables ====")
(setq enable-local-variables :all)


;; Export content from org to Hugo md
(message "\n==== Exporting Hugo markdown ====")
(with-current-buffer (find-file "./rns-shadow-guide.org")
  (org-hugo-export-wim-to-md :all-subtrees nil :visible-only nil))

(message "\n==== Export complete ====")

;;; build.el ends here
