;; set indents for JS to 2
(setq-default js-indent-level 2)
(setq-default js2-basic-offset 2)
(setq-default indent-tabs-mode nil)

;; Requires rjsx for React stuff
;; and adds rjsx as a minor mode to *.js
(prelude-require-package 'rjsx-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))

;; requires add-node-modules-path and adds it to js-mode
(prelude-require-package 'add-node-modules-path)
(eval-after-load 'js-mode
  '(add-hook 'js-mode-hook #'add-node-modules-path))
