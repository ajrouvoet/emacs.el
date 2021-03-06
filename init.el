; initialize the load path
(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/lib/")

;; yes-and-no questions should be short
(defalias 'yes-or-no-p 'y-or-n-p)

; setup package manager
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(unless (package-installed-p 'use-package) (package-install 'use-package))
(eval-when-compile (require 'use-package))

(load "theme")
(load "keys")
(load "editor")
(load "layout")

(load "utils/backup")
(load "utils/git")
(load "utils/ranger")
(load "utils/projectile")
(load "utils/selection")
(load "utils/lsp")
(load "utils/tags")
(load "utils/snippets")

(load "lang/agda")
(load "lang/tex")
(load "lang/org")
(load "lang/coq")
(load "lang/haskell")
(load "lang/ministatix")
(load "lang/lewis")
(load "lang/typescript")
(load "lang/reason")
(load "lang/jastadd")
(load "lang/nix")
