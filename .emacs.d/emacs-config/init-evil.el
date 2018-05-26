(use-package undo-tree
  ;; installed and configured by evil anyway, configuring here explicitly
  :ensure t
  :diminish undo-tree-mode
  :config
  (global-undo-tree-mode 0) ;; global undo tree mode has to be disable cause it's conflicting with other modes, e.g. groovy, yasnippet
  (setq undo-tree-visualizer-diff t)
  )

(use-package evil
  :ensure t
  :diminish evil-mode
  :config
  (evil-mode t)
  (global-undo-tree-mode 0) ;; global undo tree mode has to be disable cause it's conflicting with other modes, e.g. groovy, yasnippet
  (define-key evil-normal-state-map (kbd "M-.") nil) ;; unset evil keybinding for M-.
  )

(provide 'init-evil)
