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
