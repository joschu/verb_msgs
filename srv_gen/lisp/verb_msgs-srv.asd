
(cl:in-package :asdf)

(defsystem "verb_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Push" :depends-on ("_package_Push"))
    (:file "_package_Push" :depends-on ("_package"))
  ))