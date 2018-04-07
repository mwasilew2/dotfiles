(use-package auto-complete
  :ensure t
  :diminish auto-complete-mode
  :init
  (progn
    (ac-config-default) ;; basic configuration
    (global-auto-complete-mode t)) ;; toggle auto-compplete mode in all buffers
  )

(defadvice auto-complete-mode (around disable-auto-complete-for-python)
  (unless (eq major-mode 'python-mode) ad-do-it))

(add-to-list 'ac-modes 'ansible-mode)
(add-to-list 'ac-modes 'bibtex-mode)
(add-to-list 'ac-modes 'clojure-mode)
(add-to-list 'ac-modes 'docker-mode)
(add-to-list 'ac-modes 'erlang-mode)
(add-to-list 'ac-modes 'gnuplot-mode)
(add-to-list 'ac-modes 'golang-mode)
(add-to-list 'ac-modes 'groovy-mode)
;; (add-to-list 'ac-modes 'haskell-mode) ;; not using for haskell since it has it's own way of handling auto completion
(add-to-list 'ac-modes 'html-mode)
(add-to-list 'ac-modes 'jinja2-mode)
(add-to-list 'ac-modes 'json-mode)
(add-to-list 'ac-modes 'markdown-mode)
(add-to-list 'ac-modes 'nix-mode)
(add-to-list 'ac-modes 'nxml-mode)
(add-to-list 'ac-modes 'php-mode)
(add-to-list 'ac-modes 'puppet-mode)
(add-to-list 'ac-modes 'rpm-spec-mode)
(add-to-list 'ac-modes 'rust-mode)
(add-to-list 'ac-modes 'scala-mode)
(add-to-list 'ac-modes 'terraform-mode)
(add-to-list 'ac-modes 'toml-mode)
(add-to-list 'ac-modes 'yaml-mode)
(ad-activate 'auto-complete-mode)

(provide 'init-autocomplete)
