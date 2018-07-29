(use-package elpy
  ;; use elpy-config to see what pip modules are required by elpy
  :ensure t
  :config
  (elpy-enable)
  (add-hook 'elpy-mode-hook
            (lambda ()
              (add-hook 'before-save-hook 'elpy-format-before-save-hook nil 'make-it-local)))
  )

(defun elpy-format-before-save-hook ()
  (elpy-format-code))

(use-package virtualenvwrapper
  ;; elpy by default installs pyvenv which exposes functionality of simple venvs
  ;; this package exposes virtualenvwrapper which introduces a number of wrappers for venvs
  :ensure t
  )

(provide 'init-python)
