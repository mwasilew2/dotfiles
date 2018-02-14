(use-package elpy
  ;; requires following pip modules: elpy jedi rope
  :ensure t
  :config
  (elpy-enable)
  (setq elpy-rpc-python-command "python3")
  (setq python-shell-interpreter "python3")
  (setq python-shell-completion-native-enable nil))

(provide 'init-python)
