;; PACKAGE REPOSITORIES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; First we set up the emacs package repository, and require
;;; emacs to use it.
(require 'package)
(add-to-list 'package-archives
  '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)

;;; USEPACKAGE :: Check usepackage is installed, and install it
;;; otherwise. Usepackage is then used to check other package
;;; files are installed, and to configure them.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(provide 'init-package-repos)
