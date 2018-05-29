(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to 'load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
   (normal-top-level-add-subdirs-to-load-path)))

(add-subdirs-to-load-path "~/remacs/lisp")
(add-subdirs-to-load-path "~/remacs/extensions")
(add-subdirs-to-load-path "~/remacs/themes")

(require 'light-theme)
(require 'basic-tools)
(require 'hide-comnt)
(require 'move-text)
(require 'paredit)

(require 'init-startup)
(require 'init-flycheck)
(require 'init-auto-complete)
(require 'init-auto-save)
(require 'init-generic)
(require 'init-multiterm)
(require 'init-line-numbers)
(require 'init-backup)
(require 'init-indent)
(require 'init-tabbar)
(require 'init-yasnippet)
(require 'init-paredit)
(require 'init-ide)
(require 'init-key)
(require 'init-less)
(require 'init-sdcv)
(require 'init-moccur)
(require 'init-speedbar)
(require 'init-dired)

(require 'youdao-dictionary)

(provide 'loader)
