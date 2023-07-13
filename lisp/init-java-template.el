(dap-register-debug-template "fanscall-template (compile/attach)"
                             (list :type "java"
                                   :request "compile_attach"
                                   :args "wlog.sdk.config.appLogSimpleTextFormat=true"
                                   :cwd nil
                                   :host "127.0.0.1"
                                   :port 8080
                                   :request "launch"
                                   :name "fanscall"
                                   :environment-variables '(("wlog.sdk.config.appLogSimpleTextFormat" . "true"))
                                   :mainClass "com.weimob.rocket.fanscall.FansCallApplication"))

(setenv "HOSTNAME" "QA")
(setenv "APP_ID" "rocket-qianxi-fanscall")
(setenv "WOAUTH_URL" "http://woauth.qa.internal.hsmob.com")

(provide 'init-java-template)
