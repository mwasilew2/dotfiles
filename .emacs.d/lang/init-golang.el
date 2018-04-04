(use-package go-mode
  :ensure t)

(use-package go-stacktracer
  :ensure t)

(use-package go-complete
  :ensure t)

(use-package go-eldoc
  :ensure t)

(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'init-golang)
