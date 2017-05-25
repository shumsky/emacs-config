(require 'package)
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/tabbar")
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(require 'tabbar)

(setq-default truncate-lines t)
(setq-default indent-tabs-mode nil)
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

(tool-bar-mode -1)
(global-auto-revert-mode 1)
(show-paren-mode 1)

(global-set-key [f8] 'neotree-toggle)
(setq neo-theme 'arrow)

;(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq js-indent-level 2)
(setq js2-basic-offset 2)
(setq js2-bounce-indent-p t)

(add-hook 'after-init-hook (lambda () (load-theme 'dracula t)))
