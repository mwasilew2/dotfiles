(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :config
  (smartparens-global-mode t)
  (setq show-paren-delay 0)  ;; disable delay when highlighting matching parenthesis
  (show-paren-mode 1)  ;; highlight matching parenthesis
  )

(use-package evil-smartparens
  :ensure t
  :config
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
  )

(provide 'init-parens)
