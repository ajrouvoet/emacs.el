; initialize the load path
(add-to-list 'load-path "~/.emacs.d/config/")

; setup package manager
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-refresh-contents)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile 
  (require 'use-package))

(load "theme")
(load "keys")
;; (load "editor")

;; (load "utils/backup")
;; (load "utils/git")
;; (load "utils/ranger")
;; (load "utils/projectile")
;; (load "utils/perspective")
;; (load "utils/selection")

;; (load "lang/agda")

;; garbage from here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" default)))
 '(package-selected-packages
   (quote
    (spacemacs-theme solarized-theme evil-surround magit fish-mode doom-themes which-key ranger general evil-magit avy)))
 '(recentf-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

