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
(setq elm-format-on-save t)

;; web-mode
(setq web-mode-markup-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq-default indent-tabs-mode nil)
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-current-column-highlight t)

;; json-mode
(setq json-reformat:indent-width 2)


;; tab width and tab stops
(setq tab-width 2)
(setq-default tab-stop-list (number-sequence 2 100 2))

;; TODO: cleanup org-mode setup, extract into separate file maybe?
;; org-journal
(prelude-require-package 'org-journal)
(setq org-journal-dir "~/Dropbox/orgs/journal")

;; org-agenda
(setq org-agenda-files '("~/Dropbox/orgs/gtd.org"))

;; org-refile
(setq org-refile-targets '(("~/Dropbox/orgs/gtd.org" :maxlevel . 1)))
