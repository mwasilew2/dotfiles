;; Custom emacs configuration.


;;; First we set up the emacs package repository, and require
;;; emacs to use it.

;; We would like to be able to install packages from MELPA
;; so lets include the repository
(require 'package)
(package-initialize)
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


;;; Now we make some adjustments to the basic appearance of
;;; emacs. For example, we load themes, and remove unwanted
;;; toolbars.


;; THEME :: Load the monokai theme
(use-package monokai-theme
  :ensure t
  :config (load-theme 'monokai t))

(global-linum-mode t)
(windmove-default-keybindings)
(tool-bar-mode -1) ; Turn off tool bar in X mode
(setq show-trailing-whitespace t)
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)


(use-package neotree
  :ensure t)

(defun terminalhere ()
  (interactive)
  (shell-command "gnome-terminal"))

(global-set-key [f5] 'terminalhere)

(defun projects ()
  (interactive)
  (neotree-dir "/media/truecrypt1/1_home/weekly.0/localhost/1_home/workspace/projects"))

(global-set-key [f8] 'neotree-toggle)

;; HELM :: Use helm in places where it is useful
(use-package helm
  :ensure t
  :bind ( ;; First using helm for M-x so we get a live filter
          ;; of options, and don't need to keep tab completing.
          ("M-x" . helm-M-x)
          ;; Also use helm for buffers. I can never remember the
          ;; buffers I have open.
          ("C-x C-b" . helm-buffers-list)
          ;; Finding files can also be a pain, so use helm
          ;; to locate and open files
          ("C-x C-f" . helm-find-files)))

(use-package markdown-mode
    :ensure t)

(use-package markdown-toc
  :ensure t)

(use-package puppet-mode
  :ensure t)

(use-package yaml-mode
  :ensure t)

(use-package elpy
  :ensure t)
(setq elpy-rpc-python-command "python3")
(elpy-enable)

(set-face-attribute 'default nil :height 100)
(setq make-backup-files nil)
(setq resize-mini-windows nil)

