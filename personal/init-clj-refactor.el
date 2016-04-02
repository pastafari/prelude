;;; init-clj-refactor.el --- Requires clj-refactor
;;; Commentary:
;;; Require clj-refactor, add to clojure-mode, set up keybinding.
;;; Code:
(prelude-require-package 'clj-refactor)

(defun cljr-clojure-mode-hook ()
  "Setup cljr within clojure-mode."
  (clj-refactor-mode +1)
  (yas-minor-mode +1)
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'cljr-clojure-mode-hook)

(provide 'init-clj-refactor)
;;; init-clj-refactor.el ends here
