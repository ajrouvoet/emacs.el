(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono for Powerline"
                    :weight 'normal
                    :width 'normal)

(use-package doom-themes :ensure t)

(use-package nord-theme
  :ensure t
  :config
  (setq nord-comment-brightness 8)
  (load-theme 'nord t nil)
  )

(use-package base16-theme
  :ensure t
  :config
  )

(use-package doom-modeline
      :ensure t
      :hook (after-init . doom-modeline-mode))

;; minimal ui
(scroll-bar-mode -1)			;
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

;; highlight 
(global-hl-line-mode)

;; shortcuts
(general-def aj-leader-map
  "wT" 'counsel-load-theme
)
