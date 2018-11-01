(use-package magit
  :ensure t
  :after (general evil)
  :init ; todo general
  (aj/leader/global
    "gs" 'magit-status
    )
  )

(use-package evil-magit
  :after (evil magit)
  :ensure t)
