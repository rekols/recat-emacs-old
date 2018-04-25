(require 'lazy-set-key)

(lazy-set-key
  '(
     ("M-o" . backward-delete-char-untabify)
     ("C-/" . undo)  ; 撤销
     ("C-?" . redo)  ; TODO: 重做
     ("C-c v" . split-window-vertically)
     ("C-c h" . split-window-horizontally)
     ("C-x ;" . delete-other-windows)
     ("M-4" . whitespace-cleanup)
     ("M-h" . set-mark-command)
     ("M-g" . goto-line)
     ("C-:" . comment-or-uncomment-region+)
     ("M-s-l" . less-minor-mode)
     ("M-N" . kill-syntax-backward+)            ;向后进行语法删除
     ("M-M" . kill-syntax-forward+)             ;向前进行语法删除
     ("C-j" . paredit-newline)
     ("C-x C-f" . ido-find-file)
     ("M-m" . hide/show-comments-toggle)
  )
)

(defvar paredit-key-alist nil)
(setq paredit-key-alist
      '(
        ("(" . paredit-open-parenthesis)       ;智能 (
        (")" . paredit-close-parenthesis)      ;智能 )
        ("[" . paredit-open-bracket)           ;智能 [
        ("]" . paredit-close-bracket)          ;智能 ]
        ("{" . paredit-open-curly-smart)       ;智能 {
        ("}" . paredit-close-curly)            ;智能 }
        ("C-s-," . paredit-open-angled)        ;智能 <
        ("C-s-." . paredit-close-angled)       ;智能 >
        ("\"" . paredit-doublequote)           ;智能 "
        ("\\" . paredit-backslash)             ;智能 \
        )
 )

(lazy-set-key
 '(
   ("M--" . text-scale-decrease-global) ;减少字体大小, 全局
   ("M-+" . text-scale-increase-global) ;增加字体大小, 全局
   ("s-x" . multi-term-dedicated-toggle) ; toggle terminal
   ("s-f" . find-file-root)
))

(lazy-set-key
 '(
   ("M-h" . ac-complete)                ;补全当前选中的
   ("M-H" . ac-expand-common)           ;补全公共部分
   ("M-U" . ac-stop)                    ;停止
   ("M-," . ac-next)                    ;下一个
   ("M-." . ac-previous)                ;上一个
   ("M-s" . ac-isearch)                 ;搜索补全
   )
 ac-complete-mode-map
)

;; ISearch
(lazy-set-key
  '(
     ("M-%" . isearch-query-replace)
     ("M-s" . isearch-repeat-forward)
     ("M-o" . isearch-delete-char)
  )
  isearch-mode-map
)

(lazy-set-key
  '(
     ("<C-tab>" . tabbar-backward-tab)
     ("<f8>" . dired-jump)
  )
)

(lazy-set-key
  '(
     ("s-N" . move-text-down)
     ("s-P" . move-text-up)
     ("s-J" . scroll-up-line)
     ("s-K" . scroll-down-line)
  )
)

;; Dired

(lazy-set-key
  '(
     ("j" . dired-next-file-line)
     ("k" . dired-previous-file-line)
     ("E" . dired-touch-now)
     ("'" . dired-up-directory-single)
   ) dired-mode-map
)

(provide 'init-key)
