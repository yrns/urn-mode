;;; urn-mode --- urn-mode

;;; Commentary:

;; This seems to work pretty well.

;;; Code:
(require 'clojure-mode)

(define-derived-mode urn-mode clojure-mode "Urn" "Major mode for Urn"
  (setq-local clojure-align-binding-forms (append clojure-align-binding-forms '("with")))
  (setq-local clojure--let-regexp
	      "\(\\(when-let\\|if-let\\|let\\|with\\)\\(\\s-*\\|\\[\\)")

  ;; Add "with" to other binding forms for indent. This affects
  ;; clojure-mode too. FIX:
  (put-clojure-indent 'with 1)
  (font-lock-add-keywords nil '(("with" . font-lock-keyword-face))))

(add-to-list 'auto-mode-alist (cons "\\.lisp\\'" 'urn-mode))

(provide 'urn-mode)
;;; urn-mode.el ends here
