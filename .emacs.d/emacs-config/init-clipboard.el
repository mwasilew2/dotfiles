;; clipboard behaviour
(delete-selection-mode 1) ;; replace selection when pasting
;; (setq select-enable-clipboard nil) ;; default set to t, non-nil means kill commands will overwrite OS clipboard. it's pretty much like putting an equal sign between first object in kill ring and OS clipboard, i.e. if set to nil, clipboard will not be available in emacs, if set to non-nil, killing will override clipboard and clipboard will be available as first object in the kill ring
;; (setq x-select-enable-clipboard t) ;; alias for select-enable-clipboard
;; (setq select-enable-primary t) ;; non-nil means cutting and pasting uses the primary selection
;; (setq mouse-drag-copy-region t) ;; non-nil means copy to kill-ring upon mouse adjustments of region
(setq save-interprogram-paste-before-kill t) ;; save clipboard to kill ring when overwriting clipboard with kill
(global-set-key (kbd "S-<insert>") 'evil-paste-before)

(provide 'init-clipboard)
