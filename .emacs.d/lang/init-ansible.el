(use-package ansible
  :ensure t
  )

(use-package ansible-doc
  :ensure t
  :diminish ansible-doc-mode
  )

(use-package ansible-vault
  :ensure t
  :diminish ansible-vault-mode
  )

(provide 'init-ansible)
