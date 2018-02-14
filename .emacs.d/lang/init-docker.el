(use-package dockerfile-mode
  :ensure t)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(provide 'init-docker)
