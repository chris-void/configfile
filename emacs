;; forbide welcome page
(setq inhibit-startup-message nil)
(setq gnus-inhibit-startup-message nil)


(put 'downcase-region 'disabled nil)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
)

;; 配色设置
(add-to-list 'load-path "~/.emacs.d/");  配色设置
(require 'color-theme)
(color-theme-initialize)
;(color-theme-robin-hood)
(color-theme-dark-laptop)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Python Settings

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; auto complete
;(add-to-list 'load-path "~/.emacs.d/plugins")
;(require ‘auto-complete)
;(global-auto-complete-mode t)


(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)


;;(add-to-list 'load-path "/folder/containing/file")  ;; if it's not already in `load-path'
(require 'python)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(setq
 python-shell-interpreter "ipython"
 ;python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")


;;; python
;(add to list 'load-path "~/.emacs.d/")
;(require 'python-mode)
;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;```emacs-lisp
(add-to-list 'load-path "~/.emacs.d/")  ;; if it's not already in `load-path'
(require 'python)
;```

(set-default-font "-outline-Lucida Console-normal-normal-normal-mono-*-*-*-*-*-*-iso10646-1" 1)
;(set-default-font "-outline-Menlo-normal-normal-normal-mono-15-*-*-*-c-*-iso8859-1")


;;不自动保存 无#xxxx#文件
(setq auto-save-default nil)

;; 控制缩进
(setq-default c-basic-offset 4)


(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())
(loop for x downfrom 40 to 1 do
      (setq tab-stop-list (cons (* x 4) tab-stop-list)))

(defconst my-c-style
  '((c-tab-always-indent        . t)
    (c-comment-only-line-offset . 0)
    (c-hanging-braces-alist     . ((substatement-open after)
                                   (brace-list-open)))
    (c-hanging-colons-alist     . ((member-init-intro before)
                                   (inher-intro)
                                   (case-label after)
                                   (label after)
                                   (access-label after)))
    (c-cleanup-list             . (scope-operator
                                   empty-defun-braces
                                   defun-close-semi))
    (c-offsets-alist            . ((arglist-close . c-lineup-arglist)
                                   (substatement-open . 0)
                                   (cpp-macro . 0)
                                   (case-label        . 4)
                                   (block-open        . 0)
                                   (knr-argdecl-intro . -)))
    (c-echo-syntactic-information-p . t)
    )
  "My C Programming Style")

;; offset customizations not in my-c-style
(setq c-offsets-alist '((member-init-intro . ++)))

;; Customizations for all modes in CC Mode.
(defun my-c-mode-common-hook ()
  ;; add my personal style and set it for the current buffer
  (c-add-style "PERSONAL" my-c-style t)
  ;; other customizations
  (setq tab-width 4
        ;; this will make sure spaces are used instead of tabs
        indent-tabs-mode nil)
  ;; we like auto-newline and hungry-delete
  (c-toggle-auto-hungry-state 1)
  ;; key bindings for all supported languages.  We can put these in
  ;; c-mode-base-map because c-mode-map, c++-mode-map, objc-mode-map,
  ;; java-mode-map, idl-mode-map, and pike-mode-map inherit from it.
  (define-key c-mode-base-map "\C-m" 'c-context-line-break)
  )

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;(require 'setnu)
;(setnu-mode t)
(global-linum-mode 1)
(setq linum-format "%2d ")
(show-paren-mode t)
(setq x-select-enable-clipboard t)



;(set-language-environment 'Chinese-GB)
;(set-keyboard-coding-system 'euc-cn)
;(set-clipboard-coding-system 'euc-cn)
;(set-terminal-coding-system 'euc-cn)
;(set-buffer-file-coding-system 'euc-cn)
;(set-selection-coding-system 'euc-cn)
;(modify-coding-system-alist 'process "*" 'euc-cn)
;(setq default-process-coding-system
;'(euc-cn . euc-cn))
;(setq-default pathname-coding-system 'euc-cn)

(global-set-key (kbd "C-SPC") 'nil)
(custom-set-variables
'(load-home-init-file t t))
(custom-set-faces)
(setq default-major-mode 'text-mode);一打开就起用 text 模式。
(global-font-lock-mode t);语法高亮
(auto-image-file-mode t);打开图片显示功能
(fset 'yes-or-no-p 'y-or-n-p);以 y/n代表 yes/no，可能你觉得不需要，呵呵。
(column-number-mode t);显示列号
(show-paren-mode t);显示括号匹配
(display-time-mode 1);显示时间，格式如下
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;(tool-bar-mode nil)   ;去掉那个大大的工具栏
;(scroll-bar-mode nil);去掉滚动条，因为可以使用鼠标滚轮了 ^_^
(mouse-avoidance-mode 'animate);光标靠近鼠标指针时，让鼠标指针自动让开
(transient-mark-mode t);
(setq x-select-enable-clipboard t);支持emacs和外部程序的粘贴
(setq frame-title-format "DIrk@%b");在标题栏提示你目前在什么位置
(setq default-fill-column 80);默认显示 80列就换行
(setq-default make-backup-files nil);不要生成临时文件
