(use-package window
  :init
  (winner-mode 1)
  (setq display-buffer-alist
        '(;; top side window
          ("\\*\\(Flymake\\|Package-Lint\\|vc-git :\\).*"
           (display-buffer-in-side-window)
           (window-height . 0.16)
           (side . top)
           (slot . 0)
           (window-parameters . ((no-other-window . t))))
          ("\\*Messages.*"
           (display-buffer-in-side-window)
           (window-height . 0.16)
           (side . top)
           (slot . 1)
           (window-parameters . ((no-other-window . t))))
          ("\\*\\(Backtrace\\|Warnings\\|Compile-Log\\|Agda information\\|compilation\\|Async Shell Command\\)\\*"
           (display-buffer-in-side-window)
           (side . bottom)
           (slot . 2)
           (window-parameters . ((no-other-window . t)
                                 (no-delete-other-windows . t))))
          ;; bottom side window
          ("\\*\\(Output\\|Register Preview\\).*"
           (display-buffer-in-side-window)
           (window-width . 0.16)       ; See the :hook
           (side . bottom)
           (slot . -1)
           (window-parameters . ((no-other-window . t))))
          (".*\\*Completions.*"
           (display-buffer-in-side-window)
           (window-height . 0.16)
           (side . bottom)
           (slot . 0)
           (window-parameters . ((no-other-window . t))))
          ("^\\(\\*e?shell\\|vterm\\).*"
           (display-buffer-in-side-window)
           (window-height . 0.16)
           (side . bottom)
           (slot . 1))
          ;; left side window
          ("\\*Help.*"
           (display-buffer-in-side-window)
           (window-width . 0.20)       ; See the :hook
           (side . left)
           (slot . 0)
           (window-parameters . ((no-other-window . t))))
          ;; right side window
          ("\\*Faces\\*"
           (display-buffer-in-side-window)
           (window-width . 0.25)
           (side . right)
           (slot . 0)
           (window-parameters
            . ((no-other-window . t)
               (mode-line-format
                . (" "
                   mode-line-buffer-identification)))))
          ("\\*Custom.*"
           (display-buffer-in-side-window)
           (window-width . 0.25)
           (side . right)
           (slot . 1))
          ;; bottom buffer (NOT side window)
          ("\\*\\vc-\\(incoming\\|outgoing\\).*"
           (display-buffer-at-bottom))))


  (setq window-combination-resize t)
  (setq even-window-sizes 'height-only)
  (setq window-sides-vertical nil)
  (setq switch-to-buffer-in-dedicated-window 'pop)

  :hook ((help-mode-hook . visual-line-mode)
         (custom-mode-hook . visual-line-mode))
)

(use-package writeroom-mode
  :ensure t
  :diminish
  :config
  :init
  (add-hook 'writeroom-mode-hook (lambda () (display-line-numbers-mode -1)))
  (setq writeroom-width 120))

(general-def aj-leader-map
  :prefix "w"
  "M" 'delete-other-windows
  "q" 'window-toggle-side-windows
  "x" 'evil-window-delete
  ">" 'other-window
  "=" 'balance-windows
  "+" 'balance-windows-area
  "u" 'winner-undo
  "r" 'winner-redo
  "S" 'ivy-push-view
  "R" 'ivy-switch-view
  "l" 'evil-window-right
  "h" 'evil-window-left
  "k" 'evil-window-up
  "j" 'evil-window-down
  "s" 'evil-window-split
  "v" 'evil-window-vsplit
  "n" 'evil-window-new
  "w" 'writeroom-mode
  "r" 'recenter
)
