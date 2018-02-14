(global-set-key "\M-;" 'comment-line)
(windmove-default-keybindings) ;; use default keybindings for moving across windows
(setq tramp-default-method "ssh")
(setq sentence-end-double-space nil)
(fset 'yes-or-no-p 'y-or-n-p)

;; no longer needed since using evil
;; with the below, keybindings are as needed, but view-mode is enabled
;; (defvar view-mode-map
;;   (let ((map (make-sparse-keymap)))
;;     (define-key map "\C-v" 'View-scroll-half-page-forward)
;;     map))
;; (view-mode 1)
;; workaround for loading functions from view mode
;; (view-mode 1)
;; (view-mode 0)
;; (global-set-key "\C-v" 'View-scroll-half-page-forward)
;; (global-set-key "\M-v" 'View-scroll-half-page-backward)

;; auto save, backup
;; (setq make-backup-files nil)  ;; disable taking backups
;; I save files very often, I use it more for controlling when I'm editing
;; I don't want to rely only on auto-saving and backups, because then I lose track of whan and when I edited
;; store all backup and autosave files in a local dir instead of next to the original file
(setq global-auto-revert-mode t)
(setq backup-directory-alist
  `((".*" . "~/.emacs_saves/")))
(setq auto-save-file-name-transforms
  `((".*" "~/.emacs_saves/" t)))
(setq auto-save-interval 20)
(setq auto-save-timeout 3)

(diminish 'flyspell-mode)
(diminish 'undo-tree-mode)
(diminish 'auto-revert-mode)

(provide 'init-misc)
