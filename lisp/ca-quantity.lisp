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
  (concept ?quant (quantity :unit (gram)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num)))
  (request (test (after ?quant ?range (range)))
           (actions (modify ?quant :quantity ?range))))
  
(define-ca-word
  ml
  (concept ?quant (quantity :unit (milliliter)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  cm
  (concept ?quant (quantity :unit (centimeter)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  inch
  (concept ?quant (quantity :unit (inch)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  inches
  (concept ?quant (quantity :unit (inch)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  pound
  (concept ?quant (quantity :unit (pound)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  pounds
  (concept ?quant (quantity :unit (pound)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))






  
  

