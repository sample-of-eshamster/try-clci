#|
  This file is a part of try-clci project.
  Copyright (c) 2015 eshamster (hamgoostar@gmail.com)
|#

(in-package :cl-user)
(defpackage try-clci-test-asd
  (:use :cl :asdf))
(in-package :try-clci-test-asd)

(defsystem try-clci-test
  :author "eshamster"
  :license ""
  :depends-on (:try-clci
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "sample")
                 (:test-file "try-clci"))))
  :description "Test system for try-clci"

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
