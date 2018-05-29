(dolist (hook (list
               'c-mode-common-hook
               'c-mode-hook
               'c++-mode-hook
               'java-mode-hook
               'haskell-mode-hook
               'emacs-lisp-mode-hook
               'lisp-interaction-mode-hook
               'lisp-mode-hook
               'maxima-mode-hook
               'ielm-mode-hook
               'sh-mode-hook
               'makefile-gmake-mode-hook
               'php-mode-hook
               'python-mode-hook
               'js-mode-hook
               'go-mode-hook
               'qml-mode-hook
               'jade-mode-hook
               'css-mode-hook
               'enh-ruby-mode-hook
               'rust-mode-hook
               ))
  (add-hook hook '(lambda () (paredit-mode 1))))

(defvar one-key-menu-paredit-alist nil
  "The `one-key' menu alist for PAREDIT.")

(setq one-key-menu-paredit-alist
      '(
        ;; Wrap.
        (("h" . "Wrap Left Object") . paredit-backward-slurp-sexp)
        (("l" . "Wrap Right Object") . paredit-forward-slurp-sexp)
        ;; Free.
        (("," . "Free Left Object") . paredit-backward-barf-sexp)
        (("." . "Free Right Object") . paredit-forward-barf-sexp)
        ;; Remove.
        (("<" . "Remove Paren And Left Object") . paredit-splice-sexp-killing-backward)
        ((">" . "Remove Paren And Right Object") . paredit-splice-sexp-killing-forward)
        ;; Join or Split.
        (("j" . "Join Sexps") . paredit-join-sexps)
        (("k" . "Split Sexps") . paredit-split-sexp)
        (("n" . "Join next list") . paredit-join-with-next-list)
        (("p" . "Join previous list") . paredit-join-with-previous-list)
        (("N" . "Add next list") . paredit-add-to-next-list)
        (("P" . "Add previous list") . paredit-add-to-previous-list)
        ;; Move.
        (("u" . "Move list forward") . paredit-move-list-forward)
        (("i" . "Move list backward") . paredit-move-list-backward)
        ))

(defun one-key-menu-paredit ()
  "The `one-key' menu for PAREDIT."
  (interactive)
  (one-key-menu "PAREDIT" one-key-menu-paredit-alist t t nil nil t))

(provide 'init-paredit)

;;; init-paredit.el ends here
