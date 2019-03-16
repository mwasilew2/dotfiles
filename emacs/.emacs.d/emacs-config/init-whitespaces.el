(setq-default whitespace-style '(face tabs spaces trailing space-before-tab newline indentation empty space-after-tab tab-mark)) ;; configure which whitespaces to highlight
(global-whitespace-mode t) ;; enable whitespace highglighting global minor mode
(diminish 'global-whitespace-mode) ;; don't display mode name in the status bar
(setq-default show-trailing-whitespace t) ;; highlight trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; delete trailing whitespaces on save

(provide 'init-whitespaces)
