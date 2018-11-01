; (use-package spacemacs-theme
;  :ensure t)

(use-package solarized-theme
  :ensure t)

(use-package doom-themes
  :ensure t
  :init
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  )

; minimal ui
(scroll-bar-mode -1)			;
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

; select theme
(load-theme 'solarized-dark t)
