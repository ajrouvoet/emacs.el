(use-package proof-general
  :ensure t

  :init
  (setq proof-splash-enable nil)
  
  :config
  (set-input-method "Agda")

  ;; define a hydra for proof navigation
  (defhydra hydra-coq-stepper ()
    "Step"
    ("." proof-goto-point)
    ("j" proof-assert-next-command-interactive)
    ("k" proof-undo-last-successful-command)
    ("r" proof-retract-buffer)
    ("$" proof-process-buffer)
    )

  ;; bind the hydra
  (general-define-key
   :states '(normal motion)
   :keymaps 'coq-mode-map
   :which-key "Coq"
   :prefix ","
   "."  'hydra-coq-stepper/proof-goto-point
   "d"  'company-coq-toggle-definition-overlay
   "ed" 'company-coq-diff-unification-error
   "h"  'company-coq-doc
  )
)

(use-package company-coq
  :ensure t
  :after coq
  :commands company-coq-mode)
