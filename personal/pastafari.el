;;; Keys
;; Command is meta, option is super
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;;; Prelude customization
(setq prelude-guru nil)

;;; ag setup and customization
(prelude-require-package 'ag)

;; Use Helm everywhere
(require 'prelude-helm-everywhere)

;;; clj-refactor setup and customization
(prelude-require-package 'clj-refactor)

(defun pretty-fns ()
  (font-lock-add-keywords
   nil `(("(\\(fn\\)[\[[:space:]]"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    "ƒ")
                    nil))))))


(defun pretty-lambdas ()
  (font-lock-add-keywords
   nil `(("\\(#\\)("
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))


(defun pretty-sets ()
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
(add-hook 'clojure-mode-hook 'paredit-mode)

;;; diff-hl fix for magit
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

;;; multiple cursors setup
(prelude-require-package 'multiple-cursors)

;;; create test file if it doesn't exist
(setq projectile-create-missing-test-files t)

;; elm-mode
(prelude-require-package 'elm-mode)
