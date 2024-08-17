(defpackage :raindrops
  (:use :cl)
  (:export :convert))

(in-package :raindrops)

(defun convert (number)
  (let ((drops ""))
    (when (= (mod number 3) 0)
      (setf drops (concatenate 'string drops "Pling")))
    (when (= (mod number 5) 0)
      (setf drops (concatenate 'string drops "Plang")))
    (when (= (mod number 7) 0)
      (setf drops (concatenate 'string drops "Plong")))
    (if (string= drops "")
        (setf drops (write-to-string number)))
    drops))

