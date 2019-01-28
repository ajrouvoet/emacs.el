(use-package general
  :ensure t
  :config
  (general-evil-setup t)
  )

(use-package hydra
  :ensure t
  :config

  ;; zoom
  (defhydra hydra-zoom ()
    "Zoom!"
    ("i" text-scale-increase "zoom-in")
    ("d" text-scale-decrease "zoom-out"))
  (general-def aj-leader-map "z" 'hydra-zoom/body)
  )

(use-package evil
  :ensure t
  :after general
  :init
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

  ;; window manipulation
  (winner-mode)
  (general-def aj-leader-map
    "w" 'evil-window-map
    )
  (general-def evil-window-map
    "m"   'delete-other-windows
    "u"   'winner-undo
    "r"   'winner-redo
    )

  ;; buffer manipulation
  (general-define-key
    :states 'normal
    "[b"  'evil-prev-buffer
    "]b"  'evil-next-buffer
    )
  (general-def aj-leader-map
    "bb"  'counsel-ibuffer)

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

  :config
  ;; use the homerow keys
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  ;; also show with fewer than 2 windows
  (setq aw-dispatch-always t)

  (general-def evil-window-map
    "a" 'ace-window))
      
