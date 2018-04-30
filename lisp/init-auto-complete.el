(require 'auto-complete-config)
(require 'auto-complete-clang)

(ac-config-default)

(setq-default
 ac-sources
 '(
   ac-source-yasnippet
   ac-source-imenu
   ac-source-abbrev
   ac-source-words-in-same-mode-buffers
   ac-source-files-in-current-dir
   ac-source-filename
   ;; ac-source-c-headers
   ;; ac-source-rtags
   ))

(defun my-ac-config ()
  (setq ac-clang-flags
        (mapcar(lambda (item)(concat "-I" item))
               (split-string
                "
                  /usr/include/c++/6
                  /usr/include/x86_64-linux-gnu/c++/6
                  /usr/include/c++/6/backward
                  /usr/lib/gcc/x86_64-linux-gnu/6/include
                  /usr/local/include
                  /usr/lib/gcc/x86_64-linux-gnu/6/include-fixed
                  /usr/include/x86_64-linux-gnu
                  /usr/include
")))
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)

(provide 'init-auto-complete)
