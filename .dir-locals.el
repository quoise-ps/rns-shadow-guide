;;; General variables
((nil . ((org-hide-emphasis-markers . t)
         (org-log-done-with-time . t)
         (org-log-done . time)
         (calendar-date-style . iso)
         (org-auto-align-tags . t)
         (org-preview-latex-default-process . dvisvgm)
         (org-startup-with-inline-images . t)
         (org-hide-macro-markers . t)
         (org-export-headline-levels 4)
         (org-src-fontify-natively . t)

         ;;; Project-specific settings
         ;;;; Content
         (org-footnote-section . "Footnotes")
         (org-hugo-base-dir . "./")
         (org-hugo-section . "doc")

         ;;;; Export-related
         (org-export-with-sub-superscripts . nil)
         (org-export-with-section-numbers . t)
         (org-export-with-todo-keywords . nil))))
