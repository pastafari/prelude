;; Not entirely sure why I have these. Need to go thru helm docs again!
;; Use Helm everywhere
(require 'prelude-helm-everywhere)
;; Helm stopped respecting left and right :(
;; https://github.com/emacs-helm/helm/wiki/FAQ#arrow-keys-behavior-have-changed
(define-key helm-map (kbd "<left>") 'helm-previous-source)
(define-key helm-map (kbd "<right>") 'helm-next-source)
;; for helm-find-files
(customize-set-variable 'helm-ff-lynx-style-map t)

;; for helm-imenu
(customize-set-variable 'helm-imenu-lynx-style-map t)

;; for semantic
(customize-set-variable 'helm-semantic-lynx-style-map t)

;; for helm-occur
(customize-set-variable 'helm-occur-use-ioccur-style-keys t)

;; for helm-grep
(customize-set-variable 'helm-grep-use-ioccur-style-keys t)


