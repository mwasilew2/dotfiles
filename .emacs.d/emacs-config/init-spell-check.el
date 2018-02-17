;; (add-hook 'text-mode-hook 'flyspell-buffer) ;; check the entire buffer when opening, slows down emacs massively when working with big files
(add-hook 'text-mode-hook 'flyspell-mode) ;; enable flyspell-mode, checks only the word around cursor
(add-hook 'prog-mode-hook (lambda () (ac-flyspell-workaround))) ;; enable flyspell workaround
(setq flyspell-issue-message-flag nil) ;; don't print error messages, improves performance
;;(with-eval-after-load 'go-mode
;; (require 'go-autocomplete)
;; (ac-flyspell-workaround))

;; (use-package flycheck
  ;; :ensure t
  ;; :config
  ;; (global-flycheck-mode))

(diminish 'flyspell-mode)

(provide 'init-spell-check)
