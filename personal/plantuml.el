(prelude-require-package 'plantuml-mode)

;; requires plantuml to be installed in the path
;; dotfiles dev_essentials does this already
(setq plantuml-executable-path "plantuml")
(setq plantuml-default-exec-mode 'executable)
(setq plantuml-indent-level 2)

;; Enable plantuml-mode for PlantUML files
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))

(defun plantuml-after-save-hook ()
  "Auto-generate preview in new buffer"
  (plantuml-preview-buffer nil))

(add-hook 'plantuml-mode-hook 'plantuml-after-save-hook)
