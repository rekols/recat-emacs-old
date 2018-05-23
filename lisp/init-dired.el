(require 'dired)
(require 'dired+)
(require 'dired-details)
(require 'dired-details+)
(require 'dired-extension)

(setq my-dired-omit-status t)                 ;设置默认忽略文件
(setq my-dired-omit-regexp "^\\.?#\\|^\\..*") ;设置忽略文件的匹配正则表达式
(setq my-dired-omit-extensions '(".cache"))   ;设置忽略文件的扩展名列表

(add-hook 'dired-after-readin-hook '(lambda ()
                                      (progn
                                        (require 'dired-extension)
                                        (dired-sort-method)))) ;先显示目录, 然后显示文件

(add-hook 'dired-mode-hook '(lambda ()
                              (progn
                                (require 'dired-extension)
                                (dired-omit-method)))) ;隐藏文件的方法

; Dired 文件管理器快捷键

(lazy-set-key
  '(
     ("j" . dired-next-file-line)       ; 下
     ("k" . dired-previous-file-line)   ; 上
     ("E" . dired-touch-now)            ; 新建文件
     ("S" . dired-do-moccur)            ; 搜索文件
     ("q" . dired-up-directory-single)  ; 上一级目录
     ("e" . dired-find-file)            ; 打开文件或目录
     ("?" . dired-get-size)             ; 文件大小
   ) dired-mode-map 
)

(provide 'init-dired)
