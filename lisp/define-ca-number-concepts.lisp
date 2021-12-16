#|
===========================================================
-*- Mode: Lisp; Syntax: Common-Lisp -*-

File: define-ca-number-concepts.lisp
Description: Define number concepts with CA

Bugs to vladimir kulyukin via canvas
===========================================================
|#

;;; Let's load all ca files. I assume
;;; that ca-loader.lisp is in the same directory as
;;; ca-recipe.lisp

;(defparameter *ca-folder* "/home/vladimir/teaching/AI/conceptual_analysis/ca_11/")
(defparameter *ca-folder* "/Users/elihermann/School/intelligentSystems/finalProject/realProject/lisp/")

(require (concatenate 'string *ca-folder* "ca-loader.lisp"))

;;; let's load CA
(ca-loader *files*)

(defconstant *quantity-str-pattern*
  "(define-ca-word ~A (concept nil (number :symbol (~A))))")

(let ((num-concepts (make-hash-table)))
  
  (defun generate-number-concepts (ln)
    (multiple-value-bind
     (sexpr num-chars)
     (read-from-string ln)
     (let ((num-def-strings nil))
       (dolist (sym sexpr)
	 (when (and (numberp sym)
		    (null (gethash sym num-concepts)))
	   (push (format nil *quantity-str-pattern* sym sym)
		 num-def-strings)
	   (setf (gethash sym num-concepts) t)))
       num-def-strings)))
  )

(defun pass-number-concepts (input-stream output-stream)
  (do ((ln (read-line input-stream)
	   (read-line input-stream)))
      ((null ln))
      (when (> (length ln) 0)
	(dolist (num-concept (generate-number-concepts ln))
	  (write-line num-concept output-stream)))))

(pass-number-concepts *standard-input* *standard-output*)





      
