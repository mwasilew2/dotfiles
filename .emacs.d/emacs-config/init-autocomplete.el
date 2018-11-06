;; useful example: https://github.com/tjarvstrand/config-files/blob/master/.emacs.d/lib/my-auto-complete.el
;; (use-package auto-complete
;;   :ensure t
;;   :diminish auto-complete-mode
;;   :config
;;   (ac-config-default)
;;   ;; delays
;;   ;; (setq ac-auto-start 0)         ;; 2
;;   (setq ac-delay 0.2)              ;; 0.1
;;   (setq ac-auto-show-menu 0.2)   ;; 0.8
;;   (setq ac-quick-help-delay 0.1) ;; 1.5
;;   (global-auto-complete-mode t)
;;   (setq-default ac-sources
;;                 ;; order in which suggestions appear corresponds to the order of sources here
;;                 ;; having too many sources here slows down emacs considerably
;;                 '(ac-source-yasnippet ;; snippets available in yasnippet in current mode
;;                   ac-source-words-in-all-buffer
;;                   ac-source-filename ;; local filesystem (paths, filenames)
;;                   ac-source-abbrev ;; common abbreviations
;;                   ;; ac-source-gtags
;;                   ;; ac-source-functions
;;                   ;; ac-source-symbols
;;                   ;; ac-source-variables
;;                   ;; ac-source-dictionary
;;                   ;; ac-source-words-in-same-mode-buffers
;;                   ))
;;   )

;; (defadvice auto-complete-mode (around disable-auto-complete-for-python)
;;   (unless (eq major-mode 'python-mode) ad-do-it))

;; (add-to-list 'ac-modes 'ansible-mode)
;; (add-to-list 'ac-modes 'bibtex-mode)
;; (add-to-list 'ac-modes 'clojure-mode)
;; (add-to-list 'ac-modes 'docker-mode)
;; (add-to-list 'ac-modes 'emacs-lisp-mode)
;; (add-to-list 'ac-modes 'erlang-mode)
;; (add-to-list 'ac-modes 'gnuplot-mode)
;; (add-to-list 'ac-modes 'golang-mode)
;; (add-to-list 'ac-modes 'groovy-mode)
;; ;; (add-to-list 'ac-modes 'haskell-mode) ;; not using for haskell since it has it's own way of handling auto completion
;; (add-to-list 'ac-modes 'html-mode)
;; (add-to-list 'ac-modes 'jinja2-mode)
;; (add-to-list 'ac-modes 'json-mode)
;; (add-to-list 'ac-modes 'markdown-mode)
;; (add-to-list 'ac-modes 'nix-mode)
;; (add-to-list 'ac-modes 'nxml-mode)
;; (add-to-list 'ac-modes 'php-mode)
;; (add-to-list 'ac-modes 'puppet-mode)
;; (add-to-list 'ac-modes 'rpm-spec-mode)
;; (add-to-list 'ac-modes 'rust-mode)
;; (add-to-list 'ac-modes 'scala-mode)
;; (add-to-list 'ac-modes 'terraform-mode)
;; (add-to-list 'ac-modes 'toml-mode)
;; (add-to-list 'ac-modes 'yaml-mode)
;; (ad-activate 'auto-complete-mode)

(provide 'init-autocomplete)
