;;; urn-mode --- urn-mode

;;; Commentary:

;; This seems to work pretty well.

;;; Code:
(require 'clojure-mode)

(define-derived-mode urn-mode clojure-mode "Urn" "Major mode for Urn")

(add-to-list 'auto-mode-alist (cons "\\.lisp\\'" 'urn-mode))

(provide 'urn-mode)
;;; urn-mode.el ends here
