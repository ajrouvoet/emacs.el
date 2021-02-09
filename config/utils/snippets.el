(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(use-package yasnippet
  :init
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t)
