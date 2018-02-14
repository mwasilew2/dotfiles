(use-package terraform-mode
  :ensure t
  :config
  (add-hook 'terraform-mode 'company-terraform-init))

(use-package company-terraform
  :ensure t)

(provide 'init-terraform)
