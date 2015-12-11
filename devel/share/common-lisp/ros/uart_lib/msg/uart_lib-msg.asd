
(cl:in-package :asdf)

(defsystem "uart_lib-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "usr_message" :depends-on ("_package_usr_message"))
    (:file "_package_usr_message" :depends-on ("_package"))
  ))