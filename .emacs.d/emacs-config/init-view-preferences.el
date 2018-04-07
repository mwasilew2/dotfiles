(setq inhibit-startup-screen t) ;; don't display emacs welcome screen (tutorial), inhibit-splash-screen is an alias for this var
(setq initial-scratch-message "") ;; initial message in the startup scratch buffer
(scroll-bar-mode -1) ;; remove all scroll bars
;; (horizontal-scroll-bar-mode t) ;; display horizontal scroll bar
(tool-bar-mode -1) ;; Turn off tool bar in X mode
(set-default 'truncate-lines nil) ;; wrap lines
;; (setq truncate-partial-width-windows nil) ;; don't wrap lines for horizontally split windows
;; (setq column-number-mode t) ;; display cursor position at the bottom of a window, not relevant since using powerline
(setq-default frame-title-format "%b (%f)") ;; display file path in the frame title
(set-face-attribute 'default nil :height 110)  ;; font size
;; (setq resize-mini-windows nil) ;; don't automatically resize the mini window
(split-window-right) ;; when spliting windows, do it side by side https://www.gnu.org/software/emacs/manual/html_node/emacs/Split-Window.html
(global-hl-line-mode) ;; highlight line

(use-package monokai-theme
  :ensure t
  :config (load-theme 'monokai t))

;; (use-package material-theme
  ;; :ensure t)
  ;; :config (load-theme 'material t))

;; (use-package solarized-theme
  ;; :ensure t
  ;; :config (load-theme 'solarized-dark t))

;; (use-package diminish
  ;; don't display modes in the status bar
  ;; :ensure t)

(use-package powerline
  ;; Use powerline
  :ensure t
  :config
  (powerline-default-theme))

(use-package fill-column-indicator
  ;; ruler
  :ensure t
  :config
  (setq fci-rule-column 80)
  (setq fci-handle-truncate-lines nil)
  (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1))) ;; make fill-column-indicator a global minor mode
  (global-fci-mode 1) ;; enable the global mode you just created
  )

;; (use-package nlinum-relative
;;   :ensure t
;;   :pin melpa
;;   :diminish nlinum-relative-mode
;;   :config
;;   (setq nlinum-relative-redisplay-delay 0)
;;   (setq nlinum-relative-current-symbol "0")
;;   (global-nlinum-relative-mode))

;; ;; (use-package nlinum
;; LINE NUMBERING:: use nlinum for line numbering
;;   :ensure t
;;   :diminish nlinum-mode)

(global-linum-mode t) ;; display global line numbers on the left hand side

(provide 'init-view-preferences)
