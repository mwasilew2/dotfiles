;; (use-package scala-mode
  ;; :ensure t
  ;; )

;;http://ensime.github.io/
;; before ensime can be started, .ensime has to be generated
;; when opening scala files ensime should be running (do it manually or configure for autostartup on filetype)
;; in order to generate .ensime:
;; 1. install an sbt global plugin for ensime
;; 2. generate ensime config from sbt started in cli ()when using sbt, you might need TERM=xterm-color sbt): ensimeConfig (when running ensimeConfig, you might need to set ensimeScalaVersion in your build.sbt)
;; 3. you should now have .ensime file in your project
(use-package ensime
  :ensure t
  :pin melpa-stable
  )

(use-package sbt-mode
  :pin melpa-stable
  )

(use-package scala-mode
  :pin melpa-stable
  :config
  (add-hook 'scala-mode-hook 'ensime)
  )

(provide 'init-scala)
