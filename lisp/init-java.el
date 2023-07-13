(use-package lsp-java
  :init
  (setq lsp-java-java-path "/usr/local/Cellar/openjdk@17/17.0.7/bin/java")
  :config
  (setq lsp-java-configuration-runtimes '[(:name "JavaSE-17"
                                                 :path "/usr/local/Cellar/openjdk@17/17.0.7/libexec/openjdk.jdk/Contents/Home/")
    			                          (:name "JavaSE-1.8"
                                                 :path "/usr/local/Cellar/openjdk@8/1.8.0+372/libexec/openjdk.jdk/Contents/Home/"
                                                 :default t)])
  (add-hook 'java-mode-hook 'lsp))

(require 'lsp-java-boot)
;; to enable the lenses
(add-hook 'lsp-mode-hook #'lsp-lens-mode)
(add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)

(setq lsp-inhibit-message t)
(setq lsp-ui-sideline-update-mode 'point)

(setq dap-java-java-command "/usr/local/Cellar/openjdk@8/1.8.0+372/libexec/openjdk.jdk/Contents/Home/bin/java -Denv=qa -Dwlog.sdk.config.appLogSimpleTextFormat=true")
;;(setq dap-java-java-command "/usr/local/Cellar/openjdk@17/17.0.7/libexec/openjdk.jdk/Contents/Home/bin/java")

(setq lsp-java-import-maven-enabled 1)

(setq lsp-java-configuration-maven-user-settings "/Users/zhou/Documents/DevelopTool/maven/settings.xml")


(setq lsp-java-vmargs '(
			            "-XX:+UseParallelGC" 
			            "-XX:GCTimeRatio=4" 
			            "-XX:AdaptiveSizePolicyWeight=90" 
			            "-Dsun.zip.disableMemoryMapping=true" 
			            "-Xmx2G" 
			            "-Xms500m"
			            "-javaagent:/Users/zhou/Documents/DevelopTool/maven/repository/org/projectlombok/lombok/1.18.26/lombok-1.18.26.jar"
			            ))

;;(setq lsp-java-jdt-download-url  "https://download.eclipse.org/jdtls/milestones/0.57.0/jdt-language-server-0.57.0-202006172108.tar.gz")


(provide 'init-java)
