(use-package general
  :ensure t
  :config
  (general-evil-setup t)
  )

(use-package hydra
  :ensure t
  :config

  ;; indenting
  (defhydra hydra-indent-rigidly ()
    "Indent rigidly"
    ("l" indent-rigidly-right)
    ("h" indent-rigidly-left)
    )
  (general-define-key
    :states 'visual
    "TAB" 'hydra-indent-rigidly/body)
  )

(use-package evil
  :ensure t
  :after general
  :init
  (setq evil-want-abbrev-expand-on-insert-exit nil)
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)

  :config
  (evil-mode 1)

  (defvar aj-leader-map (make-sparse-keymap) "everyweir")
  (defvar aj-mm-map (make-sparse-keymap) "somewheir")
  (general-define-key
     :states '(normal motion visual)
     :keymaps 'override
     "SPC" aj-leader-map
  )

  ;; buffer manipulation
  (general-define-key
    :states 'normal
    "[b"  'evil-prev-buffer
    "]b"  'evil-next-buffer
    )
  (general-def aj-leader-map
    :prefix "b"
    "b"  'counsel-ibuffer
    "w"  'delete-trailing-whitespace
  )

  ;; paragraph manipulation
  (general-def aj-leader-map
    :prefix "P"
    "f"  'fill-paragraph
    "F"  'auto-fill-mode
  )

  ;; comments
  ;; todo keymap + which key support
  (general-def aj-leader-map
    :which-key "Commenting"
    "cl" 'comment-line
    "cp" 'comment-or-uncomment-region
  )

)

; evil-integration
(use-package evil-collection
  :ensure t
  :after (evil general)

  :custom
  (evil-collection-setup-minibuffer t)

  :config
  ;; enable evil maps for various builtin things
  (evil-collection-init 'minibuffer)
  (evil-collection-init 'info)
  (evil-collection-init 'compile)
  (evil-collection-init 'dired)
  (evil-collection-init 'ibuffer)
  )

;; awesome menus
(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  )

;; ace window manipulation
(use-package ace-window
  :ensure t
  :after general
  :config
  ;; use the homerow keys
  ;; (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  ;; also show with fewer than 2 windows
  ;; (setq aw-dispatch-always t)

  (general-def evil-window-map
    "a" 'ace-window))

(if (eq window-system 'x)
    (shell-command "xmodmap -e 'clear Lock' -e 'keycode 66 = F13'"))
