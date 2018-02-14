;;; init.el --- -*- lexical-binding: t; -*-

;; examples
;; https://github.com/purcell/emacs.d/blob/master/init.el
;; http://pages.sachachua.com/.emacs.d/Sacha.html
;; https://www.emacswiki.org/emacs/emacs-init.el
;; https://www.cs.utah.edu/~aek/code/init.el.html
;; https://gist.github.com/atilaneves/f78918db2de53f2cf45d

(setq debug-on-error t)
(add-to-list 'load-path (expand-file-name "emacs-config" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lang" user-emacs-directory))
(package-initialize)

;; emacs config
(require 'init-clipboard)
(require 'init-custom-functions)
(require 'init-evil)
(require 'init-misc)
(require 'init-package-repos)
(require 'init-scrolling)
(require 'init-spell-check)
(require 'init-tabs-spaces)
(require 'init-tools)
(require 'init-view-preferences)

;; lang
(require 'init-ansible)
(require 'init-clojure)
(require 'init-docker)
(require 'init-erlang)
(require 'init-groovy)
(require 'init-haskell)
(require 'init-html)
(require 'init-jinja2)
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
