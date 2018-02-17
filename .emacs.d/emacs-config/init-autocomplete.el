(use-package auto-complete
  :ensure t
  :diminish auto-complete-mode)
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t))
(defadvice auto-complete-mode (around disable-auto-complete-for-python)
  (unless (eq major-mode 'python-mode) ad-do-it))
(add-to-list 'ac-modes 'ansible-mode)
(add-to-list 'ac-modes 'bibtex-mode)
(add-to-list 'ac-modes 'clojure-mode)
(add-to-list 'ac-modes 'docker-mode)
(add-to-list 'ac-modes 'erlang-mode)
(add-to-list 'ac-modes 'groovy-mode)
(add-to-list 'ac-modes 'jinja2-mode)
(add-to-list 'ac-modes 'markdown-mode)
(add-to-list 'ac-modes 'puppet-mode)
(add-to-list 'ac-modes 'rpm-spec-mode)
(add-to-list 'ac-modes 'terraform-mode)
(add-to-list 'ac-modes 'toml-mode)
(add-to-list 'ac-modes 'yaml-mode)
(ad-activate 'auto-complete-mode)

(provide 'init-autocomplete)
