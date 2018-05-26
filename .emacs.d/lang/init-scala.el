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
