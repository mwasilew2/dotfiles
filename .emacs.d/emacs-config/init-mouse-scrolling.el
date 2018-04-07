(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; scroll x lines at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; if set to non-nill will scroll window under mouse, if set to nil will scroll the active one (with cursor active)
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position t)

(provide 'init-mouse-scrolling)
