(use-package shackle
  :ensure t
  :defer 5
  :commands shackle-mode

  :init
  (shackle-mode)

  :config
  (setq
   shackle-rules        '((compilation-mode :noselect t :align 'below :size 0.2)
			  (flycheck-mode    :noselect t :align 'below :size 0.2)
			  (".*Flycheck.*" :regexp t :noselect t :align 'below :size 0.2)
			  (".*Goals.*"    :regexp t :noselect t :align 'below :size 0.2))
   shackle-default-rule '(:select t))

  )

