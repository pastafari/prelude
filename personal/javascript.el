;; Requires rjsx for React stuff

(prelude-require-package 'rjsx-mode)

;; adds rjsx as a minor mode to *.js
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
