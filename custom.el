(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to 'load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
   (normal-top-level-add-subdirs-to-load-path)))

(add-subdirs-to-load-path "~/remacs/lisp")
(add-subdirs-to-load-path "~/remacs/plugins")

(require 'dark-theme)
(require 'basic-tools)
(require 'hide-comnt)
(require 'move-text)
(require 'paredit)
(require 'less)

(require 'init-startup)
(require 'init-auto-complete)
(require 'init-auto-save)
(require 'init-generic)
(require 'init-multiterm)
(require 'init-linum)
(require 'init-backup)
(require 'init-dired)
(require 'init-indent)
(require 'init-tabbar)
(require 'init-yasnippet)
(require 'init-paredit)
(require 'init-ide)
(require 'init-key)

(require 'init-sdcv)

(provide 'custom)
