;; (use-package tide
;;   :ensure t
;;   :after (typescript-mode company flycheck)
;;   :hook ((typescript-mode . tide-setup)
;;          (typescript-mode . tide-hl-identifier-mode)
;;          (before-save . tide-format-before-save)))

(use-package typescript-mode :ensure t)

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mod-mode))
