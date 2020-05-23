;; org todo states
(setq org-todo-keywords
      '((sequence "TODO" "DOING"  "|" "DONE")))

;; org-directories
(setq org-directory "~/Dropbox/orgs")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg/")
(setq org-mobile-inbox-for-pull "~/Dropbox/Apps/MobileOrg/todos.org")

;; org-link
(global-set-key (kbd "C-c l") 'org-store-link)

;; org-agenda
(setq org-agenda-files (list org-directory))
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-span 'day)

;; org-capture
(setq org-default-notes-file (concat org-directory "/gtd.org"))
(global-set-key (kbd "C-c c") 'org-capture)

;; org-journal stuff
(setq org-journal-dir (concat org-directory "/journal"))
