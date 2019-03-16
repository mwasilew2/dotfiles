(use-package puppet-mode
  :ensure t
  :config
  )

(defun puppet-custom-settings ()
  (setq tab-width 2))
(add-hook 'puppet-mode-hook 'puppet-custom-settings)

(provide 'init-puppet)
