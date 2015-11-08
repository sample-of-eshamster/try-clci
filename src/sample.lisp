(in-package :cl-user)
(defpackage try-clci.sample
  (:use :cl)
  (:export :add-sample))
(in-package :try-clci.sample)

(defun add-sample (x y)
  (+ x y))
