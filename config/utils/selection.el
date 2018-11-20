(use-package ivy
  :ensure t
  :init
  (ivy-mode)
  :config
  (evil-collection-init 'ivy)
  )

; provided by ivy
(use-package counsel
  :after ivy
  :general
  (:keymaps 'aj-leader-key
   "x" 'counsel-M-x)
  )
