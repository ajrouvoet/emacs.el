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

(use-package forge
  :ensure t
  :after magit
  :config
  (defhydra hydra-forge ()
    "Forge"
    ("n" forge-create-post "new post")
    ("e" forge-edit-post   "edit post")
    ("c" forge-edit-topic-title "edit title")
    ("S" forge-edit-topic-state "edit topic state")
    ("l" forge-edit-topic-labels "edit labels")
    ("a" forge-edit-topic-assignees "edit assignees")

    ("c" forge-post-submit "commit topic")
    ("x" forge-post-cancel "abort topic"))
  :general
  (:keymaps 'aj-leader-map
    "h" 'hydra-forge/body
  ))
