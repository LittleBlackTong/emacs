(use-package diminish
  :ensure t)

(diminish 'rainbow-mode)                                       ; Hide lighter from mode-line
(diminish 'rainbow-mode " Rbow")                               ; Replace rainbow-mode lighter with " Rbow"
(diminish 'rainbow-mode 'rainbow-mode-lighter)                 ; Use raingow-mode-lighter variable value
(diminish 'rainbow-mode '(" " "R-" "bow"))                     ; Replace rainbow-mode lighter with " R-bow"
(diminish 'rainbow-mode '((" " "R") "/" "bow"))                ; Replace rainbow-mode lighter with " R/bow"
(diminish 'rainbow-mode '(:eval (format " Rbow/%s" (+ 2 3))))  ; Replace rainbow-mode lighter with " Rbow/5"
(diminish 'rainbow-mode                                        ; Replace rainbow-mode lighter with greened " Rbow"
	  '(:propertize " Rbow" face '(:foreground "green")))
(diminish 'rainbow-mode                                        ; If rainbow-mode-mode-linep is non-nil " Rbow/t"
	  '(rainbow-mode-mode-linep " Rbow/t" " Rbow/nil"))
(diminish 'rainbow-mode '(3 " Rbow" "/" "s"))                  ; Replace rainbow-mode lighter with " Rb"

(diminish 'ivy-mode)
(diminish 'company-mode)
(diminish 'projectile-mode)

(provide 'init-diminish)
