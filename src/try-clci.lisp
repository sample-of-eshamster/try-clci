(in-package :cl-user)
(defpackage try-clci
  (:use :cl)
  (:export :add))
(in-package :try-clci)

(defun add (x y)
  (+ x y))
