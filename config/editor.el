;; tabs
(setq
   tab-width 2)
(setq-default
   indent-tabs-mode nil)

;; scaling
(use-package default-text-scale
  :ensure t
  :init 
  (default-text-scale-mode)
  :config
  ;; zoom
  (defhydra hydra-zoom ()
    "Zoom!"
    ("i" default-text-scale-increase "zoom-in")
    ("d" default-text-scale-decrease "zoom-out"))
  (general-def aj-leader-map "z" 'hydra-zoom/body)
  )

;; line numbers
(use-package nlinum
  :ensure t
  :config
  ;; (setq nlinum-highlight-current-line t)
  (setq nlinum-format " %d ")

  ;; line numbers everywhere
  (global-nlinum-mode)
  )

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

(use-package smartparens-config
  :ensure smartparens
  :config
  (add-to-list 'sp-no-reindent-after-kill-modes 'agda-mode)
  (smartparens-global-strict-mode))

(use-package evil-smartparens
  :ensure t
  :config
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)

  (general-define-key
   :states 'insert
   "C-l" 'sp-forward-slurp-sexp
   "C-h" 'sp-forward-barf-sexp
   "C-S-l" 'sp-backward-slurp-sexp
   "C-S-h" 'sp-backward-barf-sexp))

(use-package rainbow-delimiters
  :ensure t
  :init
  (show-paren-mode)
  (rainbow-delimiters-mode))

(use-package expand-region
  :ensure t
  :general
  (:keymaps 'aj-leader-map
      "rg" 'er/expand-region
      "rs" 'er/contract-region))

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
   "C-TAB" 'company-complete)

  :config
  ; enable the mode everywhere and set the evil keybindings
  (global-company-mode)
  (evil-collection-init 'company)

  ;; enable the capf backend
  (push 'company-capf company-backends)
  )
