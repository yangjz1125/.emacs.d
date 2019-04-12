;; basic emacs config
(global-hl-line-mode t)
(delete-selection-mode t)
(setq make-backup-files nil)
(global-linum-mode t)

;; set indent
(setq c-default-style "k&r")
(setq c-basic-offset 4)
;; config highlight
(require-package 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

(defun iconfig/remove-dos-eol ()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

;; open parens
(electric-pair-mode t)

(provide 'package-editor)
