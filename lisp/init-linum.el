(require 'linum)

(dolist (hook (list
               'c-mode-common-hook
               'c-mode-hook
               'emacs-lisp-mode-hook
               'lisp-interaction-mode-hook
               'lisp-mode-hook
               'emms-playlist-mode-hook
               'java-mode-hook
               'asm-mode-hook
               'haskell-mode-hook
               'rcirc-mode-hook
               'emms-lyrics-mode-hook
               'erc-mode-hook
               'sh-mode-hook
               'makefile-gmake-mode-hook
               'python-mode-hook
               'js2-mode-hook
               'js-mode-hook
               'html-mode-hook
               'css-mode-hook
               'apt-utils-mode-hook
               'tuareg-mode-hook
               'go-mode-hook
               'coffee-mode-hook
               'qml-mode-hook
               'markdown-mode-hook
               'slime-repl-mode-hook
               'package-menu-mode-hook
               'cmake-mode-hook
               'php-mode-hook
               'web-mode-hook
               'coffee-mode-hook
               'sws-mode-hook
               'jade-mode-hook
               'enh-ruby-mode-hook
               'vala-mode-hook
               'rust-mode-hook
               ))
  (add-hook hook (lambda () (linum-mode 1))))

(defun goto-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input.
This function will detect current linum-mode status, it won't disable linum-mode if current buffer has enable it."
  (interactive)
  (let ((linum-mode-p linum-mode))
    (unwind-protect
        (progn
          (linum-mode 1)
          (goto-line (read-number "Goto line: ")))
      (unless linum-mode-p
        (linum-mode -1))
      )))

(provide 'init-linum)
