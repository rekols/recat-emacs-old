(require 'dired)
(require 'dired+)
(require 'dired-details)
(require 'dired-details+)
(require 'dired-extension)

(setq my-dired-omit-status t)           ;设置默认忽略文件
(setq my-dired-omit-regexp "^\\.?#\\|^\\..*") ;设置忽略文件的匹配正则表达式
(setq my-dired-omit-extensions '(".cache")) ;设置忽略文件的扩展名列表

(add-hook 'dired-after-readin-hook '(lambda ()
                                      (progn
                                        (require 'dired-extension)
                                        (dired-sort-method)))) ;先显示目录, 然后显示文件

(add-hook 'dired-mode-hook '(lambda ()
                              (progn
                                (require 'dired-extension)
                                (dired-omit-method)))) ;隐藏文件的方法

;; (eval-after-load "dired" '(progn
;;   (define-key dired-mode-map (kbd "'") 'dired-up-directory-single)
;;   (define-key dired-mode-map (kbd "E") 'dired-touch-now)
;;   (define-key dired-mode-map (kbd "j") 'dired-next-file-line)
;;   (define-key dired-mode-map (kbd "k") 'dired-previous-file-line)
;; ))

(provide 'init-dired)
