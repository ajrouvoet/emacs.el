(defhydra hydra-tags ()
    "Projecting"
    ("k" xref-find-definitions)
    ("r" xref-find-references)
    ("j" xref-pop-marker-stack)
    ("/" xref-find-apropos)
    )

  (general-define-key
   :which-key "xref (TAGS)"
   :keymaps 'aj-leader-map
   "R" 'hydra-tags/body)
