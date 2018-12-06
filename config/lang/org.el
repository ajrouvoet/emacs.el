(use-package org
  :ensure t
  :config
  (setq-default pdf-view-display-size 'fit-page)
  (setq pdf-annot-activate-created-annotations t)

  ; create submenu keymaps
  (defvar org-export-map (make-sparse-keymap) "org-export-*")

  ; inhabit the keymaps
  (general-define-key
   :keymaps 'org-export-map
   "p" 'org-latex-export-to-pdf
  )

  ; bind the major-mode map to major leader
  (general-define-key
    :states '(normal motion)
    :keymaps 'org-mode-map
    :prefix ","
    "e" org-export-map
  )
)
