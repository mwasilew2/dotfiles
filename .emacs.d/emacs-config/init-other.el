(global-set-key "\M-;" 'comment-line)
(windmove-default-keybindings) ;; use default keybindings for moving across windows
(setq tramp-default-method "ssh")
(setq sentence-end-double-space nil) ;; if set to non-nil, sentences end with two spaces
(fset 'yes-or-no-p 'y-or-n-p)

(setq gc-cons-threshold (* 100 1024 1024)
      gc-cons-percentage 0.6) ;; emacs garbage collection threshold, the default is very conservative 800k

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

(provide 'init-other)
