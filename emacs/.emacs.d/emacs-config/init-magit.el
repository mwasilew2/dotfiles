;; https://magit.vc/screenshots/
;; https://github.com/howardabrams/magit-demo
;; https://www.kickstarter.com/projects/1681258897/its-magit-the-magical-git-client
;; https://magit.vc/manual/magit.html#Top

;; | Shortcut  | Action                                            |
;; | --------- | -----------------                                 |
;; | C-x g     | open magit status                                 |
;; | S         | Stage everything                                  |
;; | cc        | commit                                            |
;; | C-c C-c   | finish commiting                                  |
;; | fu        | fetch                                             |
;; | Fu        | pull                                              |
;; | Pu        | push                                              |
;; | $         | magit status/logs                                 |
;; | i         | ignoring files                                    |
;; | tab       | fold/unfold changes (when hoovering above a hunk) |
;; | ll        | one line log                                      |
;; | y         | branches view                                     |
;; | bb        | switch to branch                                  |
;; | bs        | create a spin-off branch                          |
;; | bc        | create new branch                                 |
;; |           |                                                   |

(use-package magit
  :ensure t)
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'init-magit)
