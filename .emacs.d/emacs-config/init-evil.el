;; https://github.com/bbatsov/prelude/issues/1173
(use-package undo-tree
  :load-path "site-lisp/undo-tree"
  :diminish undo-tree-mode
  )

(use-package evil
  :ensure t
  :diminish evil-mode
  :config
  (evil-mode t)
  ;;(global-undo-tree-mode 0) ;; global undo tree mode has to be disable cause it's conflicting with other modes, e.g. groovy, yasnippet
  (define-key evil-normal-state-map (kbd "M-.") nil) ;; unset evil keybinding for M-.
  )

(provide 'init-evil)
