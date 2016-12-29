;; Custom emacs configuration.


;; PACKAGE REPOSITORIES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; First we set up the emacs package repository, and require
;;; emacs to use it.
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


;; VIEW PREFERENCES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; less "jumpy" scrolling than defaults
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 2) ;; keyboard scroll one line at a time

;; theme :: Load the monokai theme
(use-package monokai-theme
  :ensure t
  :config (load-theme 'monokai t))

(setq show-trailing-whitespace t) ;; highlight trailing whitespaces

;; display file path in the frame title
(setq inhibit-default-init t)
(setq-default frame-title-format "%b (%f)")

(global-linum-mode t) ;; display global line numbers on the left hand side
(setq column-number-mode t) ;; display cursor position at the bottom of a window
(windmove-default-keybindings)
(tool-bar-mode -1) ;; Turn off tool bar in X mode

(set-default 'truncate-lines t) ;; don't wrap lines
(setq truncate-partial-width-windows nil) ;; don't wrap lines for horizontally split windows
(horizontal-scroll-bar-mode t) ;; display horizontal scroll bar
(set-face-attribute 'default nil :height 100)  ;; font size
(setq resize-mini-windows nil) ;; don't automatically resize the mini window


;; PACKAGES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Allow evil mode to be used if preferred
(use-package evil
  :ensure t)
(global-undo-tree-mode)
(setq undo-tree-visualizer-diff t)


(use-package fill-column-indicator
  :ensure t)
(setq fci-rule-column 80)  ;; display ruler at 80
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1))) ;; make fill-column-indicator a global minor mode
(global-fci-mode 1) ;; enable the global mode you just created



(use-package tabbar
  :ensure t)
(defun my-tabbar-buffer-groups () ;; customize to show all normal files in one group
  "Returns the name of the tab group names the current buffer belongs to.
 There are two groups: Emacs buffers (those whose name starts with '*', plus
 dired buffers), and the rest.  This works at least with Emacs v24.2 using
 tabbar.el v1.7."
  (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
	      ((eq major-mode 'dired-mode) "emacs")
	      (t "user"))))
(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)
(tabbar-mode 1)




(use-package auto-complete
  :ensure t)

;; spell checking
(add-hook 'text-mode-hook 'flyspell-buffer)
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook (lambda () (ac-flyspell-workaround)))

;;(with-eval-after-load 'go-mode
;; (require 'go-autocomplete)
;; (ac-flyspell-workaround))



;; moving entire lines up and down
(use-package move-text
  :ensure t)
(global-set-key [C-M-next] 'move-text-down)
(global-set-key [C-M-prior] 'move-text-up)


;; neotree - directories tree visible on the side
;;;;;;;;;;;;;

(use-package neotree
  :ensure t)

(setq neo-show-hidden-files t)
(setq neo-window-fixed-size nil)
(setq neo-window-width 35)
(global-set-key [f8] 'neotree-toggle)

;; my custom functions for navigating in neotree
(defun projects ()
  (interactive)
  (neotree-dir "/media/truecrypt1/1_home/weekly.0/localhost/1_home/workspace/projects"))

(defun projectswork ()
  (interactive)
  (neotree-dir "/data/mw5/workspace"))

;; magit
;;;;;;;;;

;; don't use magit, it opens a window anyway so there's no benefit over opening a terminal
;;(use-package magit
;;  :ensure t)
;;(global-set-key (kbd "C-x g") 'magit-status)


;; projectile
;;;;;;;;;;;;;;

(use-package projectile
  :ensure t
  :config (projectile-global-mode)
  (use-package helm-projectile
    :ensure t)
  (helm-projectile-on))

;; HELM - fuzzy matching, etc.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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


;; MODES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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



;; OTHER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setq inhibit-startup-screen t)


;; my custom function for opening terminal in the current buffer's location
(defun terminalhere ()
  (interactive)
  (shell-command "xfce4-terminal"))
(global-set-key [f7] 'terminalhere)


;; (setq make-backup-files nil)  ;; disable taking backups
;; store all backup and autosave files in a local dir
(setq backup-directory-alist
      `((".*" . "~/.emacs_saves/")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs_saves/" t)))


;; Add a keybinding to F5 to refresh the current buffer (from the file
;; on the disk
(global-set-key (kbd "<f5>")
		(lambda ()
		  (interactive)
		  (revert-buffer t t)
(message (concat "Refreshed buffer from " (buffer-file-name)))))


(defun volatile-kill-buffer ()
   "Kill current buffer unconditionally."
   (interactive)
   (let ((buffer-modified-p nil))
     (kill-buffer (current-buffer))))

(global-set-key (kbd "C-x k") 'volatile-kill-buffer)     ;; Unconditionally kill unmodified buffers.

