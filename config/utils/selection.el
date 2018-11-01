(use-package ivy
  :ensure t
  :init
  (ivy-mode)
  :config
  (evil-collection-init 'ivy)
  )

; provided by ivy
(use-package counsel
  :ensure t
  :after ivy
  :init ; todo ':general'
  (aj/leader/global
   "x" 'counsel-M-x)
  )
