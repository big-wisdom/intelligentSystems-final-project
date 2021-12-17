#|
=============================================
-*- Mode: Lisp; Syntax: Common-Lisp -*-

File: ca-lexicon.lisp
Author: Vladimir Kulyukin
bugs to vladimir kulyukin in canvas
=============================================
|#

(in-package  :user)

(setf *isa-hierarchy*
  '(
    (animate concept)
    (phys-obj concept)
    (inanimate concept)
    (location concept)
    (home location)
    (food concept)
    (human animate phys-obj)
    (food phys-obj)
    (book inanimate phys-obj)
    (apple food phys-obj)
    (pear food phys-obj)
    (lobster food phys-obj meat)
    (restaurant location)
    (action concept)
    (ingest action)
    (ptrans action)
    (atrans action)
    (city location)
    (store location)
    (kite phys-obj)
    (number concept)
    (quantity concept)
    (quality concept)
    (ingredient concept)
    (range concept)
    (roast food phys-obj meat)
    (garlic food phys-obj)
    (minced quality)
    ))

(ca-erase-lexicon)

;;; ----------------------------------------------------------------------
;;; end of file
