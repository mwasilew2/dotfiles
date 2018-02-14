(use-package haskell-mode
  :ensure t
  :config
  (custom-set-variables '(haskell-tags-on-save t))
  ;; (add-hook 'haskell-mode-hook 'smartparens-mode)
  (add-hook 'haskell-mode-hook 'subword-mode)
  (add-hook 'haskell-mode-hook 'turn-on-eldoc-mode))

(use-package intero
  :ensure t
  :after haskell-mode
  :config
  (add-hook 'haskell-mode-hook 'intero-mode)
  (add-hook 'haskell-mode-hook (lambda () (setq show-trailing-whitespace t))))

;; (use-package dhall-mode
;;   :ensure t
;;   :after haskell-mode)

(provide 'init-haskell)
