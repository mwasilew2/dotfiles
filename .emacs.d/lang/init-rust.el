(use-package racer
  :ensure t
  )

(use-package rust-mode
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'rust-enable-format-on-save)
  (add-hook 'rust-mode-hook 'racer-mode)
  (add-hook 'rust-mode-hook 'eldoc-mode)
  )

(provide 'init-rust)
