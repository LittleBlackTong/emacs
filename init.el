(add-to-list 'load-path "~/.emacs.d/lisp/")

(setq image-types '(svg png gif tiff jpeg xpm xbm pbm))
;; 设置代理
(setq url-proxy-services '(("http" . "127.0.0.1:7890")
			   ("https" . "127.0.0.1:7890")))

(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'init-embark)
(require 'init-diminish)
(require 'init-projectile)
(require 'init-flycheck)
(require 'init-lsp)
(require 'init-treemacs)
(require 'init-java)
(require 'init-java-template)
(require 'init-dap)
(require 'init-magit)

(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
