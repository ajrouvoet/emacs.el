(use-package haskell-mode
  :ensure t)

(use-package dante
  :ensure t
  :after haskell-mode
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  (add-hook 'haskell-mode-hook 'dante-mode)
  )

(use-package ormolu
 :ensure t
 :hook (haskell-mode . ormolu-format-on-save-mode)
 :bind
 (:map haskell-mode-map
   ("C-c r" . ormolu-format-buffer)))

;; (use-package ghc
;;   :ensure t
;;   :init
;;   (add-hook 'haskell-mode-hook (lambda () (ghc-init))))

;; (use-package exec-path-from-shell :ensure t
;;   :init
;;   (exec-path-from-shell-initialize))

;; (use-package lsp-haskell :ensure t)
;; (setq lsp-haskell-process-path-hie "hie-wrapper")

;; ;; ensure lsp gets loaded on haskell-mode
;; (add-hook 'haskell-mode-hook #'lsp)
