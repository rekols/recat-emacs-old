(require 'multi-term)

(setq term-eol-on-send t)                         ;输入前跳转到最后一行
(setq multi-term-dedicated-skip-other-window-p t) ;`other-window' 不在专注窗口中经过
(setq multi-term-scroll-show-maximum-output t)    ;最大输出时滚动
(setq multi-term-scroll-to-bottom-on-output nil)  ;到达底部时不滚动
(setq multi-term-dedicated-select-after-open-p t) ;打开专注终端窗口时聚焦

(provide 'init-multiterm)
