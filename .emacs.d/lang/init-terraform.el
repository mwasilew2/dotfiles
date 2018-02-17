(use-package terraform-mode
  :ensure t
  :config
  (add-hook 'terraform-mode 'company-terraform-init))

(use-package company-terraform
  ;; terraform backend for company mode
  :ensure t)

(provide 'init-terraform)
