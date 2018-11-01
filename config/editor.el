;; parenthesis
(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1)

  (aj/global evil-surround-mode-map
    :states 'normal
    "c"  nil
    "cs" 'evil-surround-change
    )
  (aj/global evil-surround-mode-map
    :states 'visual
    "s"  'evil-surround-region
    )
  )

;; comments
;; todo keymap + which key support
(aj/leader/global
  :states '(normal visual)
  "c"  nil
  "cl" 'comment-line
  )
(aj/leader/global
  :states 'visual
  "cp" 'comment-or-uncomment-region
  )

;; navigation
(use-package avy
  :ensure t
  :config
  (aj/leader/global
    "jj" 'avy-goto-char
    )
  )
