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

  ;; helpers for defining major-mode keybindings
  ;; (general-create-definer aj/leader/major
  ;;   :states '(normal motion emacs)
  ;;   :prefix ",")

  ;; helpers for global keybindings that work everywhere
  ;; 
  ;; (general-create-definer aj/leader/global
  ;;   :keymaps 'override
  ;;   :states 'normal
  ;;   :prefix "SPC")
  ;; (general-create-definer aj/global
  ;;   :keymaps 'override
  ;;   :states '(normal motion emacs)
  ;; )

  ;;
  ;; buffer manipulation
  ;;

  ;; global evil rebindings
  ;; (aj/global
  ;;   "[b"  'evil-prev-buffer
  ;;   "]b"  'evil-next-buffer
  ;;   )

  ;;
  ;; window manipulation
  ;;

  (winner-mode) ; included with emacs

  ;; new plan: define keymap for leader SPC
  ;; use evil-define-key to 
  (defvar aj-global-map (make-sparse-keymap) "Everyweir")
  (define-key evil-motion-state-map (kbd "SPC") aj-global-map)
  (define-key evil-normal-state-map (kbd "SPC") aj-global-map)

  (define-key aj-global-map "w" 'evil-window-map)
  (define-key evil-window-map "m"   'delete-other-windows)
  (define-key evil-window-map "u"   'winner-undo)
  (define-key evil-window-map "r"   'winner-redo)
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
  )
  
(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  )
