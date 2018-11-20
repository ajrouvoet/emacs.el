(use-package general
  :ensure t
  :config
  (general-evil-setup t)
  )

(use-package evil
  :ensure t
  :after general
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)

  :config
  (evil-mode 1)

  ;; do not override space ever
  (general-override-mode)

  (defvar aj-leader-map (make-sparse-keymap) "everyweir")
  (defvar aj-mm-map (make-sparse-keymap) "somewheir")
  (general-define-key
     :states '(normal motion)
     "SPC" aj-leader-map
  )

  ;;
  ;; window manipulation
  ;;

  (winner-mode) ; included with emacs

  (general-def aj-leader-map
    "w" 'evil-window-map
    )
  (general-def evil-window-map
    "m"   'delete-other-windows
    "u"   'winner-undo
    "r"   'winner-redo
    )

  ;;
  ;; buffer manipulation
  ;;

  (general-define-key
    :states 'normal
    "[b"  'evil-prev-buffer
    "]b"  'evil-next-buffer
    )
)

(use-package evil-collection
  :ensure t
  :after (evil general)

  :custom
  (evil-collection-setup-minibuffer t)

  :config
  (evil-collection-init 'minibuffer)
  (evil-collection-init 'info)
  (evil-collection-init 'compile)
  (evil-collection-init 'dired)
  )
  
(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  )
