(use-package toml-mode
  :ensure t
  :config
  (add-hook 'toml-mode 'goto-address-prog-mode))


(provide 'init-toml)
