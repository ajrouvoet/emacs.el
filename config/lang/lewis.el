;;; lewis.el

(defvar lewis-mode-syntax-table nil "Syntax table for lewis-mode.")

(setq lewis-mode-syntax-table
      (let ( (synTable (make-syntax-table)))
        (modify-syntax-entry ?\/ ". 12b" synTable)
        (modify-syntax-entry ?\n "> b" synTable)
        synTable))

;; create the list for font-lock.
;; each category of keyword is given a particular face
(setq lewis-font-lock-keywords
      (let* (
             ;; define several category of keywords
             (x-keywords '("type" "import" "let" "using" "instance" "new" "using" "where" ))
             ;; (x-builtins '())

             ;; generate regex string for each category of keywords
             (x-keywords-regexp (regexp-opt x-keywords 'words))
             ;; (x-builtins-regexp (regexp-opt x-builtins 'words))
             )

        `(
          ;; (,x-builtins-regexp . font-lock-constant-face)
          (,x-keywords-regexp . font-lock-keyword-face)
	  (,"=\\|:=\\|->\\|<-\\&" . font-lock-keyword-face)
	  (,"\\b\\([[:lower:]][-[:word:]]+\\)(" (1 font-lock-function-name-face))
	  (,"\\b\\([[:upper:]][-[:word:]]+\\)(" (1 font-lock-type-face))
	  (,"\`[[:word:]_*+?]+" . font-lock-string-face)
          )))

(define-derived-mode lewis-mode prog-mode "ministatix mode"
  "Major mode for editing Lewis language"

  ;; code for syntax highlighting
  (setq font-lock-defaults '((lewis-font-lock-keywords))))


(add-to-list 'auto-mode-alist '("\\.lew\\'"   . lewis-mode))

(provide 'lewis-mode)

