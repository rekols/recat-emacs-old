;; 设置 mode line 格式

(setq-default mode-line-format
              (list
               ;; value of `mode-name'
               "%m: "
               ;; value of current buffer name
               "%b, "
               ;; value of current line number
               "line %l "
               ))

;; (getenv "USER")

(provide 'init-mode-line)
