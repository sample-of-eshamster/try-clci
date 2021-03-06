#|
  This file is a part of try-clci project.
  Copyright (c) 2015 eshamster (hamgoostar@gmail.com)
|#

#|
  Author: eshamster (hamgoostar@gmail.com)
|#

(in-package :cl-user)
(defpackage try-clci-asd
  (:use :cl :asdf))
(in-package :try-clci-asd)

(defsystem try-clci
  :version "0.1"
  :author "eshamster"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :serial t
                :components
                ((:file "sample")
                 (:file "try-clci"))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op try-clci-test))))
