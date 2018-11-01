(use-package ranger
  :ensure t
  :init ;; TODO ':general'
  (aj/leader/global
    :which-key "ranger"
    "ar" 'ranger
    "ad" 'deer
    )
  )
