;-------------------------;
;;; Syntax Highlighting ;;;
;-------------------------;
; text decoration
(require 'font-lock)

; change the default font to anonymous pro
(defvar default-font "Anonymous Pro-14" "My default Emacs font.")
(set-frame-font default-font nil t)

; show line numbers
(global-linum-mode 1)

; if there is size information associated with text, change the text
; size to reflect it
(size-indication-mode 1)
;(size-indication-mode -1)

; highlight parentheses when the cursor is next to them
(require 'paren)
(show-paren-mode 1)

(provide 'text-settings)
