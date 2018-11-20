(use-package projectile
  :ensure t
  :init
  (projectile-mode)

  :general
  (:which-key "Projecting!"
   :keymaps 'aj-leader-map
   "p" projectile-command-map)
  )

(use-package counsel-projectile
  :ensure t
  :after (counsel projectile)
  :init
  (counsel-projectile-mode)
  )
