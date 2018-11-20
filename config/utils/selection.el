(use-package ivy
  :ensure t
  :init
  (ivy-mode)
  :config
  (evil-collection-init 'ivy)
  )

(use-package counsel
  :ensure t
  :diminish counsel-mode
  :after ivy
  :general
  (:keymaps 'aj-leader-map
   "x" 'counsel-M-x)
  )

(use-package swiper
  :ensure t
  :after ivy
  :general
    (:states '(normal motion)
    "/" 'swiper)
  )
