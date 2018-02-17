(use-package evil
  ;; behaves better if declared last
  :ensure t
  :diminish evil-mode
  :config
  (evil-mode t))
(global-undo-tree-mode) ;; installed and configured by evil anyway, configuring explicitly
(diminish 'undo-tree-mode)
(setq undo-tree-visualizer-diff t)
(define-key evil-normal-state-map (kbd "M-.") nil)

(provide 'init-evil)
