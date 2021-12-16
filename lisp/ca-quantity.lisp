#|
===========================================================
-*- Mode: Lisp; Syntax: Common-Lisp -*-

File: ca-quantity.lisp
Description: Several quantity concepts for CA.
             They can be generated automatically. 
             I defined them by hand.

bugs to vladimir kulyukin via canvas
===========================================================
|#

(in-package :user)

(define-ca-word
  g
  (concept ?quant (quanity :unit (gram)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))
  
(define-ca-word
  ml
  (concept ?quant (quanity :unit (milliliter)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  cm
  (concept ?quant (quanity :unit (centimeter)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  inch
  (concept ?quant (quanity :unit (inch)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  inches
  (concept ?quant (quanity :unit (inch)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  pound
  (concept ?quant (quanity :unit (pound)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  pounds
  (concept ?quant (quanity :unit (pound)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))






  
  

