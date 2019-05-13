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
  :after (projectile)
  :init
  (counsel-projectile-mode)
  )

(use-package eyebrowse
  :ensure t
  :init
  (eyebrowse-mode t)

  :config
  (defhydra hydra-eyebrowse ()
    "Projecting"
    ("p" counsel-projectile-switch-project)
    ("f" counsel-projectile-find-file)

    ("c" eyebrowse-close-window-config)
    ("," eyebrowse-rename-window-config)

    ("0" eyebrowse-switch-to-window-config-0)
    ("1" eyebrowse-switch-to-window-config-1)
    ("2" eyebrowse-switch-to-window-config-2)
    ("3" eyebrowse-switch-to-window-config-3)
    ("4" eyebrowse-switch-to-window-config-4)
    ("5" eyebrowse-switch-to-window-config-5)
    ("6" eyebrowse-switch-to-window-config-6)
    ("7" eyebrowse-switch-to-window-config-7)
    ("8" eyebrowse-switch-to-window-config-8)
    ("9" eyebrowse-switch-to-window-config-9)
    )

  (general-define-key
   :which-key "Eyebrowse"
   :keymaps 'aj-leader-map
   "wm" 'hydra-eyebrowse/body)
  )
