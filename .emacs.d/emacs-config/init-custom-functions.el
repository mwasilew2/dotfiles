(defun terminal-here ()
  "open terminal in the current buffer's location"
  (interactive)
  (shell-command "gnome-terminal"))
(global-set-key [f8] 'terminal-here)

(defun terminal-inside ()
  "
  open terminal inside of emacs
  shell is very limited
  ansi-term
  "
  (interactive)
  (let ((buf (ansi-term "bash")))
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
(global-set-key (kbd "C-x k") 'volatile-kill-buffer) ;; Unconditionally kill unmodified buffers.

;; no longer needed since using evil
;; (defun duplicate-line-or-region (&optional n)
;;   "Duplicate current line, or region if active.
;;     With argument N, make N copies.
;;     With negative N, comment out original line and use the absolute value."
;;   (interactive "*p")
;;   (let ((use-region (use-region-p)))
;;     (save-excursion
;;       (let ((text (if use-region ;Get region if active, otherwise line
;;         (buffer-substring (region-beginning) (region-end))
;;       (prog1 (thing-at-point 'line)
;;         (end-of-line)
;;         (if (< 0 (forward-line 1)) ;Go to beginning of next line, or make a new one
;;      (newline))))))
;;   (dotimes (i (abs (or n 1))) ;Insert N times, or once if not specified
;;     (insert text))))
;;     (if use-region nil ;Only if we're working with a line (not a region)
;;       (let ((pos (- (point) (line-beginning-position)))) ;Save column
;;   (if (> 0 n) ;Comment out original with negative arg
;;      (comment-region (line-beginning-position) (line-end-position)))
;;   (forward-line 1)
;;   (forward-char pos)))))
;; (global-set-key (kbd "C-S-d") 'duplicate-line-or-region)

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

(provide 'init-custom-functions)
