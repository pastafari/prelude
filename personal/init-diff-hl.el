;;; init-diff-hl.el --- adds customizations for diff-hl
;;; Commentary:
;;; Code:
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

(provide 'init-diff-hl)
;;; init-diff-hl.el ends here
