;;----------------------------------------------------------------------------
;; Adjust garbage collection thresholds during startup, and thereafter
;;----------------------------------------------------------------------------
;;(let ((normal-gc-cons-threshold (* 20 1024 1024))
;;      (init-gc-cons-threshold (* 128 1024 1024)))
;;  (setq gc-cons-threshold init-gc-cons-threshold)
;;  (add-hook 'after-init-hook
;;(lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;;(require-package 'gnuplot)
;;(require-package 'lua-mode)
;;(maybe-require-package 'regex-tool)
;;(maybe-require-package 'dotenv-mode)
;;(when (maybe-require-package 'uptimes)
;;  (setq-default uptimes-keep-count 200)
;;(add-hook 'after-init-hook (lambda () (require 'uptimes))))
;;(require 'server)
;;(unless (server-running-p)
;;  (server-start))

(provide 'init-to-be-processed)
