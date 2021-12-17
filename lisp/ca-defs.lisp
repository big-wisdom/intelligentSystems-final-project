#|
==============================================
-*- Mode: Lisp; Syntax: Common-Lisp -*-

File: ca-defs.lisp
Author: Vladimir Kulyukin
Description: Some word definitions for CA
===============================================
|#

(in-package :user)

(define-ca-word
  roast
  (concept nil (roast)))

(define-ca-word
  chicken
  (concept nil (chicken)))

(define-ca-word
  stock
  (concept ?stock (stock))
  ; get ingredient, check for chicken, replace chicken with chicken-stock
  (request (test (before ?stock ?ing (ingredient)))
           (actions (request (test (before ?stock ?chick (chicken)))
                             (actions (modify ?ing :type (chicken-stock)))))))

(define-ca-word
  garlic
  (concept nil (garlic)))

(define-ca-word
  <comma>
  (concept ?comma (quality))
  (request (test (before ?comma ?ing (ingredient))))
  (request (test (after ?comma ?quality (quality)))
           (actions (modify ?ing :quality ?quality))))

(define-ca-word
  minced
  (concept nil (minced)))

(define-ca-word
  small
  (concept nil (small)))

(define-ca-word
  <or>
  (concept ?or (or))
  (request (test (before ?or ?first (food)))
           (actions (modify ?or :first ?first)))
  (request (test (after ?or ?second (food)))
           (actions (modify ?or :second ?second))))

(define-ca-word
  <ing>
  (concept ?ing (ingredient))
  (request (test (after ?ing ?quant (quantity)))
           (actions (modify ?ing :quantity ?quant)))
  (request (test (after ?ing ?type (or)))
           (actions (modify ?ing :type ?type)))
  (request (test (after ?ing ?type (food)))
           (actions (modify ?ing :type ?type)))
  (request (test (after ?ing ?quality (quality)))
           (actions (modify ?ing :quality ?quality))))


(define-ca-word
  <hyphen>
  (concept ?range (range))
  (request (test (before ?range ?num (number)))
           (actions (modify ?range :start ?num)))
  (request (test (after ?range ?num (number)))
           (actions (modify ?range :end ?num))))

(define-ca-word 
    jack
    (concept nil (human :name (jack) :sex (male))))

(define-ca-word
    john
    (concept nil (human :name (john) :sex (male))))

(define-ca-word
    ann
    (concept nil (human :name (ann) :sex (female))))

(define-ca-word 
    ate
  (concept ?act (ingest :time (past)))
  (request (test (before ?act ?actor (animate)))
           (actions (modify ?act :actor ?actor)))
  (request (test (after ?act ?food (food)))
	   (actions (modify ?act :object ?food))))

(define-ca-word
    bought
    (concept ?act (atrans :time (past)))
    (request (test (before ?act ?actor (animate)))
             (actions (modify ?act :actor ?actor)
                      (modify ?act :to ?actor)))
    (request (test (after ?act ?object (phys-obj)))
             (actions (modify ?act :object ?object))))

(define-ca-word
    kite
    (concept nil (kite)))

(define-ca-word
    store
    (concept nil (store)))

(define-ca-word
    went
    (concept ?act (ptrans :time (past)))
    (request (test (before ?act ?actor (animate)))
             (actions (modify ?act :actor ?actor)))
    (request (test (before ?act ?actor (animate)))
	     (actions (modify ?act :object ?actor)))
    (request (test (after ?act ?dir (direction)))
             (actions (modify ?act :to ?dir)))
    (request (test (after ?act ?loc (location)))
	     (actions (modify ?act :to ?loc))))

(define-ca-word
    restaurant
    (concept nil (restaurant)))

(define-ca-word
    home
    (concept nil (home)))

(define-ca-word
    to
    (concept ?to (to))
    (request (test (and (after ?to ?loc (location))
			(before ?to ?ptrans (ptrans))))
             (actions (modify ?ptrans :to ?loc))))

(define-ca-word 
    apple
    (concept nil (apple)))

(define-ca-word
    pear
    (concept nil (pear)))

(define-ca-word 
    an
    (mark ?x)
    (request (test (after ?x ?con (concept)))
	     (actions (modify ?con :ref (indef))))
    (request (test (after ?x ?con (concept)))
	     (actions (modify ?con :number (singular)))))

(define-ca-word
    a
    (mark ?x)
    (request (test (after ?x ?loc (location)))
             (actions (modify ?loc :ref (indef))))
    (request (test (after ?x ?loc (location)))
             (actions (modify ?loc :number (singular))))
    (request (test (after ?x ?obj (phys-obj)))
	     (actions (modify ?obj :ref (indef))))
    (request (test (after ?x ?obj (phys-obj)))
	     (actions (modify ?obj :number (singular)))))

(define-ca-word
    lobster
    (concept nil (lobster)))

;;; end-of-file

