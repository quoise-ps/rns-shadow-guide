;;; General variables
((nil . ((org-hide-emphasis-markers . t)
         (org-log-done-with-time . t)
         (org-log-done . time)
         (calendar-date-style . iso)
         (org-auto-align-tags . t)
         (org-preview-latex-default-process . dvisvg)
         (org-export-allow-bind-keywords . t)
         (org-startup-with-inline-images . t)
         (org-hide-macro-markers . t)

         ;;; Project-specific settings
         ;;;; Content
         (org-footnote-section . nil )
         (org-hugo-base-dir . "./")
         (org-hugo-section . "doc")

         ;;;; Export-related
         (org-export-with-sub-superscripts . nil)
         (org-export-with-section-numbers . 3)
         (org-export-with-todo-keywords . nil))))
