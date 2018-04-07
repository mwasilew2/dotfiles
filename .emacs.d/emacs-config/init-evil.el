(use-package evil
  :ensure t
  :diminish evil-mode
  :config
  (evil-mode t)
  (global-undo-tree-mode) ;; installed and configured by evil anyway, configuring here explicitly
  (diminish 'undo-tree-mode)
  (setq undo-tree-visualizer-diff t)
  (define-key evil-normal-state-map (kbd "M-.") nil) ;; unset evil keybinding for M-.
  )

(provide 'init-evil)
