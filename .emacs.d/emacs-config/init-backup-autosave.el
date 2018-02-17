;; (setq make-backup-files nil)  ;; disable taking backups
(setq global-auto-revert-mode t)
(diminish 'global-auto-revert-mode)
(diminish 'auto-revert-mode)
(setq backup-directory-alist
  `((".*" . "~/.emacs_saves/"))) ;; store all backup and autosave files in a local dir instead of next to the original file
(setq auto-save-file-name-transforms
  `((".*" "~/.emacs_saves/" t)))
(setq auto-save-interval 20)
(setq auto-save-timeout 3)

(provide 'init-backup-autosave)
