(use-package haskell-mode
  :ensure t)

(use-package ghc
  :ensure t
  :init
  (add-hook 'haskell-mode-hook (lambda () (ghc-init))))

(use-package intero
  :ensure t

  :init
  (add-hook 'haskell-mode-hook 'intero-mode)

  :config
  (general-define-key
   :states '(normal motion)
   :keymaps 'haskell-mode-map
   :prefix ","
   :which-key "Intero"
   "t" 'intero-type-at
   "g" 'intero-goto-definition
   "S" 'intero-repl
   "L" 'intero-repl-load
  ))
