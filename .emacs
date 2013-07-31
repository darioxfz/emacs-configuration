(add-to-list 'load-path "~/.emacs.d/settings")
(setq plugin-path "~/.emacs.d/plugins/")

(require 'custom-functions)
(require 'ui-settings)

(require 'window-settings)
(require 'cursor-settings)
(require 'text-settings)

;; Ido mode
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; ido ubiquitous
(include-plugin "ido-ubiquitous")
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

;; Smart Operator
(include-plugin "smart-operator")
(require 'smart-operator)

;; Autopair
(include-plugin "autopair")
(require 'autopair)
(autopair-global-mode)

;; Popup
(include-plugin "popup")
(require 'popup)

;; Web-Mode
(include-plugin "web-mode")
(require 'web-mode)

;; Markdown mode
(include-plugin "markdown-mode")
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (append 
       (list '("\\.text" . markdown-mode) 
	     '("\\.md" . markdown-mode) 
	     '("\\.markdown" . markdown-mode) 
	     )
       auto-mode-alist))

;; C indentation styles
(setq c-basic-offset 8)
(setq c-default-style (quote (
    (c-mode . "bsd") 
    (java-mode . "java") 
    (awk-mode . "awk") 
    (other . "gnu"))))

;; Auto complete
(require 'auto-complete-settings)

;; Yasniippet
(include-plugin "yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; Camelcase functions
(require 'camelcase-settings)

;; Fill column indicator
;(require 'fill-column-indicator-settings)

;; Python mode 
;(require 'python-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; Haskell
;(require 'haskell-mode)

;; R
;(require 'ess-site)
;(setq-default inferior-R-program-name "R")

;; Git
(include-plugin "magit")
(require 'magit)

;; Lua-Mode
(include-plugin "lua-mode")
(require 'lua-mode)

;; Put auto 'custom' changes in a separate file
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)
(put 'upcase-region 'disabled nil)
