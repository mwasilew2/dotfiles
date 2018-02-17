(setq-default tab-width 1) ;; default tab width
(setq-default indent-tabs-mode nil) ;; don't use tabs for indentation
(setq whitespace-style '(face tabs)) ;; configure whitespace mode to highlight tabs
(global-whitespace-mode t) ;; enable whitespace highglighting
(diminish 'global-whitespace-mode)
(setq-default show-trailing-whitespace t) ;; highlight trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; delete trailing whitespaces on save

(provide 'init-tabs-spaces)
