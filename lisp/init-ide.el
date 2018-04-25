(setq hippie-expand-try-functions-list
      '(
        try-expand-dabbrev-visible         ;dabbrev策略, 可见窗口优先
        try-expand-dabbrev                 ;dabbrev策略
        try-expand-dabbrev-all-buffers     ;dabbrev策略, 包括所有窗口(除了当前窗口)
        try-expand-dabbrev-from-kill       ;dabbrev策略, 从所有删除记录里搜索
        try-complete-file-name             ;补全文件名
        try-complete-file-name-partially   ;补全文件名, 匹配优先
        try-expand-list                    ;补全list
        try-expand-list-all-buffers        ;补全list, 包括所有窗口(除了当前窗口)
        try-expand-line                    ;整行补全
        try-expand-line-all-buffers        ;整行补全, 包括所有窗口(除了当前窗口)
        try-complete-lisp-symbol           ;补全符号, 符号太多了, 设置低优先级利于高效补全
        try-complete-lisp-symbol-partially ;补全符号, 包括所有窗口(除了当前窗口)
        try-expand-whole-kill              ;kill-ring里面补全
        ))

(provide 'init-ide)
