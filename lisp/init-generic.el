;; (set-frame-parameter nil 'alpha '(98 . 100))

(show-paren-mode t)                     ; 高亮显示成对括号   
(transient-mark-mode 1)                 ; 标记高亮
(fset 'yes-or-no-p 'y-or-n-p)           ; 烦人的yes/no
(global-hl-line-mode 1)                 ; 全局高亮模式
(blink-cursor-mode -1)                  ; 指针不闪动

(setq split-width-threshold nil)        ; 强制使用上下分屏的方式
(setq default-major-mode 'text-mode)    ; 设置默认地主模式为TEXT模式
(setq mouse-yank-at-point t)            ; 粘贴于光标处,而不是鼠标指针处
(setq x-select-enable-clipboard t)      ; 支持emacs和外部程序的粘贴
(setq-default cursor-type 'bar)         ; 光标样式
(setq-default comment-style 'indent)    ; 设定自动缩进的注释风格

;; remove welcome page
(setq inhibit-startup-screen t)

(provide 'init-generic)
