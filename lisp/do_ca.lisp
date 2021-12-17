#|
=================================

> python ca_input.py | clisp do_ca.lisp | clisp ca_to_gps.lisp | clisp do_gps.lisp | python use_gps_plan.py 

clisp do_ca.lisp is the second script in the above 
pipeline.

bugs to vladimir kulyukin in canvas.
==================================
|#


(in-package :user)

;;; change this as necessary.
(defparameter *ca-dir*
  "/Users/elihermann/School/intelligentSystems/finalProject/realProject/lisp/")

(load (concatenate 'string *ca-dir* "ca-loader.lisp"))

(ca-loader *files*)
;; (load (concatenate 'string *ca-dir* "ca-words.lisp"))

(setf *ca-tracing* nil)

;(loop for line = (read-line *standard-input*)
;      while line
;      do (multiple-value-bind
;        (s-expr num-chars)
;        (read-from-string line)
;        (multiple-value-bind
;          (c-list r-list)
;          (ca s-expr)
;          (format *standard-output* "~S~\%" c-list))
;        )
;      )
(let ((inln (read-line *standard-input*)))

  (multiple-value-bind
   (s-expr num-chars)
   (read-from-string inln)
   (multiple-value-bind
    (c-list r-list)
    (ca s-expr)
    (format *standard-output* "~S~\%" c-list))
   )
  )

