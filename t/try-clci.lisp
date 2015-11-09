(in-package :cl-user)
(defpackage try-clci-test
  (:use :cl
        :try-clci
        :prove))
(in-package :try-clci-test)

;; NOTE: To run this test file, execute `(asdf:test-system :try-clci)' in your Lisp.

(plan 3)

(subtest
    "Test add"
  (is (add 10 20) 30)
  (is (add 10 10) 20))

(subtest
    "Test add2"
  (is (add 10 20) 30)
  (is (add 10 10) 20))

(subtest
    "Test that is passed only in ccl"
  (ok (ccl:function-name #'car)))

(finalize)
