;; (use-package scala-mode
  ;; :ensure t
  ;; )

;;http://ensime.github.io/
;; you need to install an sbt global plugin for ensime, then generate ensime config from sbto
;; when using sbt, you might need TERM=xterm-color sbt
;; when running ensimeConfig, you might need to set ensimeScalaVersion in your build.sbt
;; you should have .ensime file in your project
(use-package ensime
  :ensure t
  :pin melpa
  )

(use-package sbt-mode
  :pin melpa
  )

(use-package scala-mode
  :pin melpa
  )

(provide 'init-scala)
