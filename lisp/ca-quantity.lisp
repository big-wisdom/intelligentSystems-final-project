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

(define-ca-word
  cloves 
  (concept ?quant (quantity :unit (clove)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  clove 
  (concept ?quant (quantity :unit (clove)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  onions
  (concept nil (onion))
  (concept ?quant (quantity :unit (onion)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  bay 
  (concept nil (bay))
  (concept ?quant (quantity :unit (bay)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  mushrooms
  (concept snil (mushroom))
  (concept ?quant (quantity :unit (mushroom)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  potatoes
  (concept snil (potato))
  (concept ?quant (quantity :unit (potato)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  carrots
  (concept snil (carrot))
  (concept ?quant (quantity :unit (carrot)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  cup
  (concept ?quant (quantity :unit (cup)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))

(define-ca-word
  tablespoon
  (concept ?quant (quantity :unit (tablespoon)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))
  
(define-ca-word
  pinch
  (concept ?quant (quantity :unit (pinch)))
  (request (test (before ?quant ?range (range)))
           (actions (modify ?quant :measure ?range)))
  (request (test (before ?quant ?num (number)))
	   (actions (modify ?quant :measure ?num))))
  

