;;初始化文本  -*- lexical-binding: t; -*-
(setq initial-scratch-message "HappyHacking every day 小关 ♥ you!")

(use-package atom-one-dark-theme
  :ensure t
  :config 
  (load-theme 'atom-one-dark t))

(use-package all-the-icons
  :if (display-graphic-p))

;; 关闭菜单栏
;;(menu-bar-mode -1)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭滑动控件
(scroll-bar-mode -1)

;; 关闭光标闪烁
(blink-cursor-mode -1)

(electric-indent-mode -1)

(icomplete-mode 1)

;; 全屏
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))
(set-frame-width (selected-frame) 110)
(set-frame-height (selected-frame) 35)


(setq inhibit-splash-screen t)


;; 更改显示字体大小
;;(set-face-attribute 'default nil :height 140)

;; 更改光标
;;(setq-default cursor-type 'bar)
(show-paren-mode t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; 设置中文编码
(set-language-environment "UTF-8")
(set-locale-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(set-file-name-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-next-selection-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(use-package simple
  :ensure nil
  :hook (after-init . size-indication-mode)
  :init
  (progn
    (setq column-number-mode t)))


(defun my/ansi-colorize-buffer ()
  (let ((buffer-read-only nil))
    (ansi-color-apply-on-region (point-min) (point-max))))

(use-package ansi-color
  :ensure t
  :config
  (add-hook 'compilation-filter-hook 'my/ansi-colorize-buffer))


(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config 
  (setq doom-modeline-lsp t)
  (setq doom-modeline-icon nil)
  (setq doom-modeline-minor-modes nil)
  (setq doom-modeline-github t)
  (setq doom-modeline-github-interval (* 30 60))
  (setq doom-modeline-time t)
  (setq doom-modeline-display-misc-in-all-mode-lines t)
  (setq doom-modeline-env-load-string "..."))

(provide 'init-ui)
