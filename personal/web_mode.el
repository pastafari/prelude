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
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-auto-closing t)

;; json-mode
(setq json-reformat:indent-width 2)

;; tab width and tab stops
(setq tab-width 2)
(setq-default tab-stop-list (number-sequence 2 100 2))
(setq standard-indent 2)

