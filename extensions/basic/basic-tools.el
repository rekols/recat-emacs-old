(defvar frame-current-font-size
  (face-attribute 'default :height)
  "Frame current font size.")

(defun add-to-alist (alist-var elt-cons &optional no-replace)
  "Add to the value of ALIST-VAR an element ELT-CONS if it isn't there yet.
If an element with the same car as the car of ELT-CONS is already present,
replace it with ELT-CONS unless NO-REPLACE is non-nil; if a matching
element is not already present, add ELT-CONS to the front of the alist.
The test for presence of the car of ELT-CONS is done with `equal'."
  (let ((existing-element (assoc (car elt-cons) (symbol-value alist-var))))
    (if existing-element
        (or no-replace
            (rplacd existing-element (cdr elt-cons)))
      (set alist-var (cons elt-cons (symbol-value alist-var)))))
  (symbol-value alist-var))

(defun kill-syntax-forward (&optional arg)
  "Kill ARG set of syntax characters after point."
  (interactive "p")
  (let ((arg (or arg 1))
        (inc (if (and arg (< arg 0)) 1 -1))
        (opoint (point)))
    (while (or          ;(not (= arg 0)) ;; This condition is implied.
            (and (> arg 0) (not (eobp)))
            (and (< arg 0) (not (bobp))))
      (if (> arg 0)
          (skip-syntax-forward (string (char-syntax (char-after))))
        (skip-syntax-backward (string (char-syntax (char-before)))))
      (setq arg (+ arg inc)))
    (if (and (> arg 0) (eobp))
        (message "End of buffer"))
    (if (and (< arg 0) (bobp))
        (message "Beginning of buffer"))
    (kill-region opoint (point))))

(defun kill-syntax-backward (&optional arg)
  "Kill ARG set of syntax characters preceding point."
  (interactive "p")
  (kill-syntax-forward (- 0 (or arg 1))))

(defun kill-syntax-forward+ (&optional arg)
  "Kill ARG set of syntax characters after point.
And if `completion-auto-mode' is active,
use function `completion-delete'."
  (interactive "p")
  (if (member 'auto-completion-mode minor-mode-list)
      (completion-delete 'kill-syntax-forward arg)
    (kill-syntax-forward arg)))

(defun kill-syntax-backward+ (&optional arg)
  "Kill ARG set of syntax characters preceding point."
  (interactive "p")
  (if (member 'auto-completion-mode minor-mode-list)
      (completion-backward-delete 'kill-syntax-forward (- arg))
    (kill-syntax-forward (- arg))))

(defun comment-or-uncomment-region+ ()
  "This function is to comment or uncomment a line or a region."
  (interactive)
  (let (beg end)
    (if mark-active
        (progn
          (setq beg (region-beginning))
          (setq end (region-end)))
      (setq beg (line-beginning-position))
      (setq end (line-end-position)))
    (save-excursion
      (comment-or-uncomment-region beg end))))

(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line ARG lines up."
  (interactive "*p")
  (move-text-internal (- arg)))

(defun move-text-down (arg)
  "Move region (transient-mar-mode active) or current line (ARG lines) down."
  (interactive "*p")
  (move-text-internal arg))

(defun text-scale-increase-global ()
  "Increase frame font size."
  (interactive)
  (setq frame-current-font-size (truncate (* 1.2 frame-current-font-size)))
  (set-face-attribute 'default nil :height frame-current-font-size))

(defun text-scale-decrease-global ()
  "Descrease frame font size."
  (interactive)
  (setq frame-current-font-size (truncate (* 0.8 frame-current-font-size)))
  (set-face-attribute 'default nil :height frame-current-font-size))

(defun find-file-root (file)
  "Find file with root."
  (interactive "fFind file as sudo: ")
  (require 'tramp)
  (tramp-cleanup-all-connections)
  (find-file (concat "/sudo:root@localhost:" file)))

(defun point-stack-push ()
  "Push current point in stack."
  (interactive)
  (message "Location marked.")
  (setq point-stack (cons (list (current-buffer) (point)) point-stack)))

(defun point-stack-pop ()
  "Pop point from stack."
  (interactive)
  (if (null point-stack)
      (message "Stack is empty.")
    (switch-to-buffer (caar point-stack))
    (goto-char (cadar point-stack))
    (setq point-stack (cdr point-stack))))

(provide 'basic-tools)
