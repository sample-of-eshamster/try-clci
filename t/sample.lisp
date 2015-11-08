(in-package :cl-user)
(defpackage try-clci-test
  (:use :cl
        :try-clci.sample
        :prove))
(in-package :try-clci-test)

;; NOTE: To run this test file, execute `(asdf:test-system :try-clci)' in your Lisp.

(plan 1)

(subtest
    "Test add"
  (is (add-sample 10 20) 30)
  (is (add-sample 10 10) 20))

(finalize)
