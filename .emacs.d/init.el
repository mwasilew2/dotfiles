;;; init.el --- -*- lexical-binding: t; -*-

;; examples
;; https://github.com/purcell/emacs.d/blob/master/init.el
;; http://pages.sachachua.com/.emacs.d/Sacha.html
;; https://www.emacswiki.org/emacs/emacs-init.el
;; https://www.cs.utah.edu/~aek/code/init.el.html
;; https://gist.github.com/atilaneves/f78918db2de53f2cf45d

(setq debug-on-error t)
(setq inhibit-default-init t) ;; don't load default.el init file https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html
(add-to-list 'load-path (expand-file-name "emacs-config" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lang" user-emacs-directory))
(package-initialize)

;; emacs config
(require 'init-autocomplete)
(require 'init-backup-autosave)
(require 'init-clipboard)
(require 'init-custom-functions)
(require 'init-evil)
(require 'init-mouse-scrolling)
(require 'init-other)
(require 'init-package-repos)
(require 'init-parens)
(require 'init-spell-check)
(require 'init-tabs-spaces)
(require 'init-tools)
(require 'init-view-preferences)

;; lang
(require 'init-ansible)
(require 'init-bibtex)
(require 'init-clojure)
(require 'init-docker)
(require 'init-erlang)
(require 'init-groovy)
(require 'init-haskell)
(require 'init-html)
(require 'init-jinja2)
(require 'init-lisp)
(require 'init-markdown)
(require 'init-nix)
(require 'init-php)
(require 'init-puppet)
(require 'init-python)
(require 'init-rpm)
(require 'init-rust)
(require 'init-scala)
(require 'init-terraform)
(require 'init-toml)
;;(require 'to-be-processed)
(require 'init-yaml)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d3a406c5905923546d8a3ad0164a266deaf451856eca5f21b36594ffcb08413a" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(haskell-tags-on-save t)
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
