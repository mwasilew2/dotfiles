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

;; theme :: Load the monokai theme
(use-package monokai-theme
  :ensure t
  :config (load-theme 'monokai t))

;; Use powerline
(use-package powerline
 :ensure t
 :config
 (powerline-default-theme))

(use-package fill-column-indicator
  :ensure t
  :config
  (setq fci-rule-column 80)
  (setq fci-handle-truncate-lines nil))
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1))) ;; make fill-column-indicator a global minor mode
(global-fci-mode 1) ;; enable the global mode you just created

;; display file path in the frame title
(setq inhibit-default-init t)
(setq-default frame-title-format "%b (%f)")

(setq-default show-trailing-whitespace t) ;; highlight trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; delete trailing whitespaces on save
(setq show-paren-delay 0)  ;; disable delay when highlighting matching parenthesis
(show-paren-mode 1)  ;; highlight matching parenthesis
(global-linum-mode t) ;; display global line numbers on the left hand side
(setq column-number-mode t) ;; display cursor position at the bottom of a window
(tool-bar-mode -1) ;; Turn off tool bar in X mode
(set-default 'truncate-lines nil) ;; wrap lines
;; (setq truncate-partial-width-windows nil) ;; don't wrap lines for horizontally split windows
;; (horizontal-scroll-bar-mode t) ;; display horizontal scroll bar
(set-face-attribute 'default nil :height 100)  ;; font size
(setq resize-mini-windows nil) ;; don't automatically resize the mini window
(setq inhibit-startup-screen t) ;; don't display emacs welcome screen (tutorial)
(windmove-default-keybindings) ;; use default keybindings for moving across windows

;; OTHER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; spell checking
(add-hook 'text-mode-hook 'flyspell-buffer)
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook (lambda () (ac-flyspell-workaround)))
;;(with-eval-after-load 'go-mode
;; (require 'go-autocomplete)
;; (ac-flyspell-workaround))

;; less "jumpy" scrolling than defaults
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 2) ;; keyboard scroll one line at a time
(global-set-key "\M-;" 'comment-line)

;; (setq make-backup-files nil)  ;; disable taking backups
;; store all backup and autosave files in a local dir
(setq backup-directory-alist
  `((".*" . "~/.emacs_saves/")))
(setq auto-save-file-name-transforms
  `((".*" "~/.emacs_saves/" t)))

(defun terminal-here ()
  "open terminal in the current buffer's location"
  (interactive)
  (shell-command "xfce4-terminal"))
(global-set-key [f7] 'terminal-here)

(defun terminal-inside ()
  "
  open terminal inside of emacs
  shell is very limited
  ansi-term
  "
  (interactive)
  (let ((buf (ansi-term "/bin/bash")))
    (switch-to-buffer (other-buffer buf))
    (switch-to-buffer-other-window buf)))
(global-set-key [f6] 'terminal-inside)

(global-set-key (kbd "<f5>")
  ;;"Add a keybinding to F5 to refresh the current buffer (from the file on the disk"
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

(defun duplicate-line-or-region (&optional n)
  "Duplicate current line, or region if active.
    With argument N, make N copies.
    With negative N, comment out original line and use the absolute value."
  (interactive "*p")
  (let ((use-region (use-region-p)))
    (save-excursion
      (let ((text (if use-region        ;Get region if active, otherwise line
		      (buffer-substring (region-beginning) (region-end))
		    (prog1 (thing-at-point 'line)
		      (end-of-line)
		      (if (< 0 (forward-line 1)) ;Go to beginning of next line, or make a new one
			  (newline))))))
	(dotimes (i (abs (or n 1)))     ;Insert N times, or once if not specified
	  (insert text))))
    (if use-region nil                  ;Only if we're working with a line (not a region)
      (let ((pos (- (point) (line-beginning-position)))) ;Save column
	(if (> 0 n)                             ;Comment out original with negative arg
	    (comment-region (line-beginning-position) (line-end-position)))
	(forward-line 1)
	(forward-char pos)))))
(global-set-key (kbd "C-S-d") 'duplicate-line-or-region)


;; BUFFER BEHAVIOUR :: handy function from wikipedia, that
;; makes new windows automatically load the next buffer
;; rather than the same one as is already open.

(defun split-vertical-to-next-buffer ()
  (interactive)
  (split-window-vertically)
  ((setq )et-window-buffer (next-window) (other-buffer)))
(defun split-horizontal-to-next-buffer ()
  (interactive)
  (split-window-horizontally)
  (set-window-buffer (next-window) (other-buffer)))
(global-set-key "\C-x2" 'split-vertical-to-next-buffer)
(global-set-key "\C-x3" 'split-horizontal-to-next-buffer)


;; PACKAGES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

(use-package elpy
  :ensure t
  :config
  (elpy-enable)
  (setq elpy-rpc-python-command "python3"))

(use-package helm
  ;; HELM - fuzzy matching, etc.
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

;; use magit, opening a terminal takes too much time and it changes context
(use-package magit
  :ensure t)
(global-set-key (kbd "C-x g") 'magit-status)

(use-package markdown-mode
  :ensure t)
(use-package markdown-toc
  :ensure t)

(use-package move-text
  :ensure t
  :config
  ;; moving text (lines, sections, marked text) up and down
  (global-set-key [C-M-next] 'move-text-down)
  (global-set-key [C-M-prior] 'move-text-up))

(use-package multiple-cursors
  :ensure t)

(use-package neotree
  ;; neotree - displays directory tree on the side
  :ensure t
  :config
  (setq neo-show-hidden-files t)
  (setq neo-window-fixed-size nil)
  (setq neo-window-width 35)
  (global-set-key [f8] 'neotree-toggle))
(add-hook 'after-init-hook #'neotree-toggle)
(defun projects ()
  (interactive)
  (neotree-dir "/media/truecrypt1/1_home/weekly.0/localhost/1_home/workspace/projects"))
(defun projectswork ()
  (interactive)
  (neotree-dir "/data/mw5/workspace"))

(use-package projectile
  :ensure t
  :config (projectile-global-mode)
  (use-package helm-projectile
    :ensure t)
  (helm-projectile-on))

(use-package puppet-mode
  :ensure t)

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

(use-package yaml-mode
  :ensure t
  :mode ("\\.yaml$" . yaml-mode))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))
(add-hook 'term-mode-hook (lambda()
        (setq yas-dont-activate t)))

(use-package evil
  ;; behaves better if declared last
  :ensure t)
;; installed and configured by evil anyway, configuring explicitly
(global-undo-tree-mode)
(setq undo-tree-visualizer-diff t)
