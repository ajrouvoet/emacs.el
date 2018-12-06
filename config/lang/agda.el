(setq agda-mode-path "/nix/store/kpanrd3ma5zxqmr19g2762xcfdhf39k1-Agda-2.6.0/share/x86_64-linux-ghc-8.4.3/Agda-2.6.0/emacs-mode/agda2.el")
(use-package agda2-mode
  :defer t
  :after hydra

  :init
  (load-file agda-mode-path)
  (progn
    (mapc
     (lambda (x) (add-to-list 'face-remapping-alist x))
     '((agda2-highlight-datatype-face              . font-lock-type-face)
       (agda2-highlight-function-face              . font-lock-type-face)
       (agda2-highlight-inductive-constructor-face . font-lock-function-name-face)
       (agda2-highlight-keyword-face               . font-lock-keyword-face)
       (agda2-highlight-module-face                . font-lock-constant-face)
       (agda2-highlight-number-face                . nil)
       (agda2-highlight-postulate-face             . font-lock-type-face)
       (agda2-highlight-primitive-type-face        . font-lock-type-face)
       (agda2-highlight-record-face                . font-lock-type-face))))

  :config
  ;; global keybindings
  (general-define-key
   :states  'normal
   :keymaps 'agda2-mode-map
   "gd"  'agda2-goto-definition-keyboard)


  ;; a hydra for goal navigation
  (defhydra hydra-agda-goals ()
    "Goal Navigation"
    ("f" agda2-next-goal "next")
    ("b" agda2-previous-goal "previous"))

  ;; extra mode-map bindings
  (general-define-key
   :states '(normal motion)
   :keymaps 'agda2-mode-map
   :which-key "Agda"
   :prefix ","
   "?"   'agda2-show-goals
   "."   'agda2-goal-and-context-and-inferred
   ","   'agda2-goal-and-context
   "="   'agda2-show-constraints
   "SPC" 'agda2-give
   "a"   'agda2-auto-maybe-all
   "c"   'agda2-make-case
   "d"   'agda2-infer-type-maybe-toplevel
   "e"   'agda2-show-context
   "gG"  'agda2-go-back
   "f"   'hydra-agda-goals/agda2-next-goal
   "b"   'hydra-agda-goals/agda2-previous-goal
   "g"   'hydra-agda-goals/body
   "h"   'agda2-helper-function-type
   "l"   'agda2-load
   "n"   'agda2-compute-normalised-maybe-toplevel
   "p"   'agda2-module-contents-maybe-toplevel
   "r"   'agda2-refine
   "s"   'agda2-solveAll
   "t"   'agda2-goal-type
   "w"   'agda2-why-in-scope-maybe-toplevel
   "xc"  'agda2-compile
   "xd"  'agda2-remove-annotations
   "xh"  'agda2-display-implicit-arguments
   "xq"  'agda2-quit
   "xr"  'agda2-restart)
  )
