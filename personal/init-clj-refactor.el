;;; init-clj-refactor.el --- Requires clj-refactor
;;; Commentary:
;;; Require clj-refactor, add to clojure-mode, set up keybinding.
;;; Code:
(prelude-require-package 'clj-refactor)

(defun pretty-fns ()
  "fns become ƒ"
  (font-lock-add-keywords
   nil `(("(\\(fn\\)[\[[:space:]]"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    "ƒ")
                    nil))))))


(defun pretty-lambdas ()
  "anon fns become lambda"
  (font-lock-add-keywords
   nil `(("\\(#\\)("
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))


(defun pretty-sets ()
  "sets become ∈"
  (font-lock-add-keywords
   nil `(("\\(#\\){"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    "∈")
                    nil))))))


(defun cljr-clojure-mode-hook ()
  "Setup cljr within clojure-mode."
  (clj-refactor-mode 1)
  (yas-minor-mode 1)
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook 'cljr-clojure-mode-hook)
(add-hook 'clojure-mode-hook 'pretty-fns)
(add-hook 'clojure-mode-hook 'pretty-sets)
(add-hook 'clojure-mode-hook 'pretty-lambdas)

(provide 'init-clj-refactor)
;;; init-clj-refactor.el ends here
