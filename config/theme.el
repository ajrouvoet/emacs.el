(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono for Powerline"
                    :weight 'normal
                    :width 'normal)

(use-package nord-theme
  :ensure t
  :config
  (setq nord-comment-brightness 8)
  (load-theme 'nord t nil)
  )

(use-package base16-theme
  :ensure t
  :config
  ; ocean*, gruvbox-*, paraiso; nord
  )

(use-package telephone-line-config
  :ensure telephone-line
  :config
  (telephone-line-evil-config)
)

;; minimal ui
(scroll-bar-mode -1)			;
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

;; some modifications
(global-hl-line-mode)
