(use-package dap-mode
  :ensure t
  :after (lsp-mode)
  ;;:init
  ;;(dap-mode 1)
  ;; The modes below are optional
  ;;(dap-ui-mode 1)
  ;; enables mouse hover support
  ;;(dap-tooltip-mode 1)
  ;; use tooltips for mouse hover
  ;; if it is not enabled `dap-mode' will use the minibuffer.
  ;;(tooltip-mode 1)
  ;; displays floating panel with debug buttons
  ;; requies emacs 26+
  ;;(dap-ui-controls-mode 1)
  :config
  (require 'dap-java))

(use-package dap-java :ensure nil)

(provide 'init-dap)
