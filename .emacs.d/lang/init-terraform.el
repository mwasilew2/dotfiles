(use-package terraform-mode
  :ensure t
  :config
  (add-hook 'terraform-mode-hook 'company-terraform-init)
  (add-hook 'terraform-mode-hook 'terraform-format-on-save-mode)
  )

(use-package company-terraform
  ;; terraform backend for company mode
  :ensure t
  :diminish company-terraform
  )

(provide 'init-terraform)
