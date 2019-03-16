(use-package yaml-mode
  :ensure t
  :mode ("\\.yaml$" . yaml-mode)
  :config
  (add-hook 'yaml-mode-hook '(lambda () (ansible 1)))
  )

(provide 'init-yaml)
