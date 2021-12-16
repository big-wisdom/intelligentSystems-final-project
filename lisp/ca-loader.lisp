#|
===========================================================
-*- Mode: Lisp; Syntax: Common-Lisp -*-

File: ca-loader.lisp

Bugs to vladimir kulyukin in canvas.
===========================================================
|#

(in-package :user)

;;; change this to the directory where the ca files are.
(defparameter *ca-dir* "/Users/elihermann/School/intelligentSystems/finalProject/realProject/lisp/")

;; (defparameter *files* '("ca-utilities" "cd" "ca" "ca-functions" "ca-lexicon" "ca-defs" "sam"))
(defparameter *files* '("ca-utilities" "cd" "ca" "ca-functions" "ca-lexicon" "ca-defs" "ca-number-concepts"))

(defun ca-loader (files &key (mode :lisp))
  (dolist (a-file files t)
    (load (concatenate 'string
            *ca-dir*
            a-file
            (ecase mode
              (:lisp ".lisp")
              (:cl  ".cl")
              (:fasl ".fasl"))))))
