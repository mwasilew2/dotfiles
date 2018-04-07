(global-set-key "\M-;" 'comment-line)
(windmove-default-keybindings) ;; use default keybindings for moving across windows
(setq tramp-default-method "ssh")
(setq sentence-end-double-space nil) ;; if set to non-nil, sentences end with two spaces
(fset 'yes-or-no-p 'y-or-n-p)

(setq gc-cons-threshold (* 100 1024 1024)
      gc-cons-percentage 0.6) ;; emacs garbage collection threshold, the default is very conservative 800k

(provide 'init-other)
