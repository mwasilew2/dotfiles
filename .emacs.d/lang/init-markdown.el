;; | Shortcut   | Action                |
;; | ---------- | -------------         |
;; | C-c C-s    | set style of text     |
;; | C-c C-s 3  | title level 3         |
;; | C-c C--    | promote with children |
;; | C-c C-=    | demote with children  |
;; | C-c >      | indent region         |
;; | C-c <      | unindent region       |
;; |            |                       |

;; https://jblevins.org/projects/markdown-mode/

;; https://github.com/jrblevin/markdown-mode/blob/ee7a3a5bf19e0ad4163a4d7e136829ebd5dcc892/markdown-mode.el#L5780
(use-package markdown-mode
  :ensure t
  )

(use-package markdown-toc
  :ensure t
  :diminish markdown-toc-mode
  )

(provide 'init-markdown)
