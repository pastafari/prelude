;;; diff-hl fix for magit
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
