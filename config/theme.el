(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono for Powerline"
                    :weight 'normal
                    :width 'normal)

(use-package all-the-icons
  :ensure t)

(use-package solarized-theme
  :ensure t)

(use-package doom-themes
  :ensure t
  :init
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
)

(use-package telephone-line-config
  :ensure telephone-line
  :config
  (telephone-line-evil-config)
)

; minimal ui
(scroll-bar-mode -1)			;
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

; select theme
(load-theme 'spacemacs-dark t)
