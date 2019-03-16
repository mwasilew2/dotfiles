;; sources
;; http://dominik.honnef.co/posts/2013/03/writing_go_in_emacs/
;; https://johnsogg.github.io/emacs-golang
;; http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/
;; http://tleyden.github.io/blog/2014/05/27/configure-emacs-as-a-go-editor-from-scratch-part-2/
;; http://tleyden.github.io/blog/2016/02/07/configure-emacs-as-a-go-editor-from-scratch-part-3/

;; install golang
;; install golang tools:
;; godoc
;; godef
;; gocode
;; goimports
;; guru
;; goflymake
;; make golang tools available in emacs (update emacs path to find them)
;; (add-to-list 'exec-path "/Users/tleyden/Development/gocode/bin"
(use-package go-mode
  :ensure t
  )

(use-package go-autocomplete
  :ensure t
  :diminish go-autocomplete
  )

;; (defun auto-complete-for-go ()
;; (auto-complete-mode 1))
 ;; (add-hook 'go-mode-hook 'auto-complete-for-go)
;; (with-eval-after-load 'go-mode
   ;; (require 'go-autocomplete))

;; this should be changed, see elpy formating on save
(defun my-go-mode-hook ()
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  )
(add-hook 'go-mode-hook 'my-go-mode-hook)

(use-package go-stacktracer
  :ensure t
  :diminish go-stacktracer
  )

(use-package go-complete
  :ensure t
  :diminish go-complete
  )

(use-package go-eldoc
  :ensure t
  :diminish go-eldoc
  )

(provide 'init-golang)
