(use-package tex
  :ensure auctex

  :config
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-hook 'LaTeX-mode-hook 'whitespace-mode)
  (add-hook 'LaTeX-mode-hook 'auto-fill-mode)

  (setq TeX-parse-self t)
  (setq TeX-auto-save nil)
  (setq TeX-save-query nil)

  ;; Rebindings for TeX-font
  ;; Taken from Spacemacs
  (defun latex/font-bold () (interactive) (TeX-font nil ?\C-b))
  (defun latex/font-medium () (interactive) (TeX-font nil ?\C-m))
  (defun latex/font-code () (interactive) (TeX-font nil ?\C-t))
  (defun latex/font-emphasis () (interactive) (TeX-font nil ?\C-e))
  (defun latex/font-italic () (interactive) (TeX-font nil ?\C-i))
  (defun latex/font-clear () (interactive) (TeX-font nil ?\C-d))
  (defun latex/font-calligraphic () (interactive) (TeX-font nil ?\C-a))
  (defun latex/font-small-caps () (interactive) (TeX-font nil ?\C-c))
  (defun latex/font-sans-serif () (interactive) (TeX-font nil ?\C-f))
  (defun latex/font-normal () (interactive) (TeX-font nil ?\C-n))
  (defun latex/font-serif () (interactive) (TeX-font nil ?\C-r))
  (defun latex/font-oblique () (interactive) (TeX-font nil ?\C-s))
  (defun latex/font-upright () (interactive) (TeX-font nil ?\C-u))

  (defhydra hydra-thing-navigation ()
    "Things"
    ("n" focus-next-thing)
    ("p" focus-prev-thing)
    )

  (general-define-key
    :states '(normal motion)
    :keymaps 'LaTeX-mode-map
    :which-key "LateX"
    :prefix ","

    ;; environments
    "e"   'LaTeX-environment
    "c"   'LaTeX-close-environment

    ;; navigation
    "n"   'hydra-thing-navigation/focus-next-thing
    "p"   'hydra-thing-navigation/focus-prev-thing

    ;; ?
    "f"   'LaTeX-fill-paragraph

    ;; formatting
    "xb"  'latex/font-bold
    "xc"  'latex/font-code
    "xe"  'latex/font-emphasis
    "xi"  'latex/font-italic
    "xr"  'latex/font-clear
    "xo"  'latex/font-oblique
    "xfc" 'latex/font-small-caps
    "xff" 'latex/font-sans-serif
    "xfr" 'latex/font-serif
    )
  )

(use-package biblio :ensure t)

(use-package writegood-mode :ensure t)
