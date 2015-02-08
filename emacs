##
## Filename: emacs
##
#  This is the personal setting script of chrisvo1d for Emacs. Anyone is welcome to fork and try this set of emacs !
##
#####################################
#
#   Basically came from: Emacs-Prelude
#
#        Including the services:
#
#
#
######################################

## Written by chrisvo1d
## Version: 1.0

# First, you should have experience of using Emacs.
# You should use the pkg control to install Emacs(like apt-get install emacs or brew install emacs, don't worry it is covered below)
# Then follow the guide to put the emacs.d folder and emacs to the right place
##
##
##



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;          basic seettings
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-linum-mode t)
(setq linum-format "%2d ")
(fset 'yes-or-no-p 'y-or-n-p)

(setq-default make-backup-files nil)
(setq inhibit-startup-message t)
(setq visible-bell nil)
(setq make-backup-files nil)
(global-font-lock-mode t)
(show-paren-mode t)

;; scroll smoothly
(setq scroll-margin 3
 scroll-conservatively 10000)
(setq auto-save-default nil)


;; markdown-mode
(add-to-list 'custom-theme-load-path "~/.emacs.d/personal/preload/")
(autoload 'markdown-mode "markdown-mode"
    "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; use electric pair mode to help
(defun electric-pair ()
     "If at end of line, insert character pair without surrounding spaces.
     Otherwise, just insert the typed character."
     (interactive)
     (if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))
(electric-pair-mode 1)

;; use electric mode in Python
(add-hook 'python-mode-hook
               (lambda ()
                (define-key python-mode-map "\"" 'electric-pair)
                (define-key python-mode-map "\'" 'electric-pair)
                (define-key python-mode-map "(" 'electric-pair)
                (define-key python-mode-map "[" 'electric-pair)
                (define-key python-mode-map "{" 'electric-pair)))

;; use c mode settings
(c-toggle-auto-newline)
(add-hook 'c-mode-common-hook (lambda () (c-toggle-auto-hungry-state 1)))
;(add-hook 'c-mode-hook
;           '(lambda ()
;                           (c-set-style "Stroustrup")
;                           (c-toggle-auto-hungry-state 1)))


;; use the atom dark theme which is my favourite
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'atom-dark t)

;; use shift + up/down to move window
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;; use utf-8 coding to help with chinese
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-basic-offset 4)
(require 'cc-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  You can add your own settings below !
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; for yasnippet
(add-to-list 'load-path "~/.emacs.d/personal/preload/yasnippet")
(require 'yasnippet)
;(yas-global-mode 1)

;; NeoTree
(add-to-list 'load-path "~/.emacs.d/personal/preload/neotree/")
(require 'neotree)
(global-set-key [f3] 'neotree-toggle)






