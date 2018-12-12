;; line numbers
(use-package nlinum
  :ensure t
  :config
  (global-nlinum-mode))

;; parenthesis
(use-package evil-surround
  :ensure t
  :init
  (global-evil-surround-mode 1)

  :general
  (:states 'normal
   "c"  nil
   "cs" 'evil-surround-change)

  (:states 'visual
   "s"  'evil-surround-region)
  )

(use-package expand-region
  :ensure t
  :general
  (:keymaps 'aj-leader-map
   "rg" 'er/expand-region
   "rs" 'er/contract-region
  ))

(use-package iedit
  :ensure t)

(use-package evil-iedit-state
  :ensure t
  :commands (evil-iedit-state evil-iedit-state/iedit-mode))
  
;; navigation
(use-package avy
  :ensure t
  :general
  (:keymaps 'aj-leader-map
   "jj" 'avy-goto-char))

;; autocomplete
(use-package company
  :ensure t
  :after evil-collection

  :general
  (:states '(normal insert)
   "TAB" 'company-complete)

  :config
  ; enable the mode and the evil keybindings
  (company-mode)
  (evil-collection-init 'company)

  ;; enable the capf backend
  (push 'company-capf company-backends)
  )
