(use-package magit
  :ensure t
  :after (general evil)
  :general
  (:keymaps 'aj-leader-map
    "gs" 'magit-status)
  )

(use-package evil-magit
  :after (evil magit)
  :ensure t)

(use-package git-gutter-fringe
  :ensure t
  :init
  (setq-default fringes-outside-margins t)

  :config
  ;; thin fringe bitmaps
  (fringe-helper-define 'git-gutter-fr:added '(center repeated)
    "XXX.....")
  (fringe-helper-define 'git-gutter-fr:modified '(center repeated)
    "XXX.....")
  (fringe-helper-define 'git-gutter-fr:deleted 'bottom
    "X......."
    "XX......"
    "XXX....."
    "XXXX....")

  ;; enable the git gutter
  (global-git-gutter-mode))
