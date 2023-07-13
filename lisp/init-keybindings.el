(global-set-key (kbd "<f2>") 'open-my-init-file)
(global-set-key  (kbd "C-x C-r") 'recentf-open-files)
;; company
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; java keymap

(global-set-key (kbd "C-x i") 'lsp-goto-implementation)
(global-set-key (kbd "C-M-g") 'lsp-find-references)
(global-set-key (kbd "C-M-l") 'lsp-format-region)
(global-set-key (kbd "<f3>") 'treemacs)
(global-set-key (kbd "C-x C-l") 'lsp-treemacs-java-deps-list)
(global-set-key (kbd "M-RET") 'lsp-java-add-import)

;; switch-window
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
(global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
(global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)
(global-set-key (kbd "C-x 4 d") 'switch-window-then-dired)
(global-set-key (kbd "C-x 4 f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 m") 'switch-window-then-compose-mail)
(global-set-key (kbd "C-x 4 r") 'switch-window-then-find-file-read-only)
(global-set-key (kbd "C-x 4 C-f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 C-o") 'switch-window-then-display-buffer)
(global-set-key (kbd "C-x 4 0") 'switch-window-then-kill-buffer)

(provide 'init-keybindings)
