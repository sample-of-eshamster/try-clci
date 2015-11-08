(in-package :cl-user)
(defpackage try-clci-test
  (:use :cl
        :try-clci
        :prove))
(in-package :try-clci-test)

;; NOTE: To run this test file, execute `(asdf:test-system :try-clci)' in your Lisp.

(plan 1)

(subtest
    "Test add"
  (is (add 10 20) 30)
  (is (add 10 10) 20))

(finalize)
