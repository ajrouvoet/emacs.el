(set-face-attribute 'default t
                    :family "JetBrains Mono Extra Light"
                    :weight 'normal
                    :width 'normal)

;; (set-fontset-font "fontset-default" "JetBrains Mono Extra Light")
(add-to-list 'default-frame-alist '(font . "JetBrains Mono Extra Light-10"))
:; (set-fontset-font "fontset-default" 'unicode  "JetBrains Mono Light")
:; (set-font "DejaVu Sans Mono")
;; (set-fontset-font "fontset-default" 'unicode "quivira")

(use-package ligature
  :load-path "lib/ligature.el/"
  :config
  ;; Enable the "www" ligature in every possible major mode
  (ligature-set-ligatures 't '("www"))
  ;; Enable traditional ligature support in eww-mode, if the
  ;; `variable-pitch' face supports it
  (ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
  ;; Enable all Cascadia Code ligatures in programming modes
  (ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                       ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                       "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                       "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                       "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                       "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                       "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                       "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                       ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                       "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                       "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                       "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                       ))
  ;; Enables ligature checks globally in all buffers. You can also do it
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))

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
