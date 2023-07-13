(setq ring-bell-function 'ignore)
(abbrev-mode t)

;;备份文件 关闭
(setq make-backup-files nil)
;;自动保存关闭
(setq auto-save-default nil)

;; 最近文件
(require 'recentf)
(recentf-mode 1)

(setq recentf-max-menu-items 25)

(fset 'yes-or-no-p 'y-or-n-p)
;; 全局显示行号
(global-display-line-numbers-mode t)

;;add hack init.el keyboard
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;minibuffers 补全
(use-package ivy
  :ensure t
  :init
  (ivy-mode)
  :config 
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package counsel
  :ensure t)

;; 增强查询
(use-package swiper
  :ensure t)

;; 全局自动补全
(use-package company
  :ensure t
  :init 
  (add-hook 'after-init-hook 'global-company-mode))

;; 全局company-mode
(global-company-mode)

;; company 微调  
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)



(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t ; Allow commands in minibuffers
	      history-length 1000
	      savehist-additional-variables '(mark-ring
					      global-mark-ring
					      search-ring
					      regexp-search-ring
					      extended-command-history)
	      savehist-autosave-interval 300))

(use-package saveplace
  :ensure nil
  :hook (after-init . save-place-mode))

(use-package exec-path-from-shell
  :ensure t
  :init 
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

;;全局快捷键
(use-package yasnippet :config (yas-global-mode))
(use-package yasnippet-snippets :ensure t)

;;指令提示
(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  ;; 底部弹窗现实
  (which-key-setup-side-window-bottom)
  (which-key-setup-minibuffer)
  (setq which-key-idle-delay -1))

;; 增强窗口选择
(use-package switch-window
  :ensure t
  :init 
  (setq switch-window-shortcut-style 'qwerty))


(provide 'init-better-defaults)
