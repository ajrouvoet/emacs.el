(use-package projectile
  :ensure t
  :init
  (projectile-mode)

  :general
  (aj/leader/global
    "p" projectile-command-map
    )
  )

(use-package counsel-projectile
  :ensure t
  :after (counsel projectile)
  :init
  (counsel-projectile-mode)
  )
