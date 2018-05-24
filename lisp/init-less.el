(require 'less)

(lazy-set-key
 '(
   ("q" . dired-jump)
   ("i" . less-minor-mode)
   ("e" . dired-jump)
   )
 less-minor-mode-map
 )

(provide 'init-less)
