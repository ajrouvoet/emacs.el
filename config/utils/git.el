(use-package magit
  :ensure t
  :after (general evil)
  :general
  (:keymaps 'aj-leader-map
    "gs" 'magit-status
    )
  )

(use-package evil-magit
  :after (evil magit)
  :ensure t)
