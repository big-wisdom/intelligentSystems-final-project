#|
===========================================================
-*- Mode: Lisp; Syntax: Common-Lisp -*-

File: ca-process-recipe.lisp
Description: process Eli Hermann's recipe file in recipe.txt 
and  define all number concepts for CA.

bugs to vladimir kulyukin via canvas
===========================================================
|#

(in-package :user)

(defconstant *lp* (nreverse '(#\Space #\< #\l #\p #\> #\Space)))
(defconstant *rp* (nreverse '(#\Space #\< #\r #\p #\> #\Space)))
(defconstant *hyphen* (nreverse '(#\Space #\< #\h #\y #\p #\h #\e #\n #\> #\Space)))
(defconstant *or* (nreverse '(#\Space #\< #\o #\r  #\> #\Space)))
(defconstant *comma* (nreverse '(#\Space #\< #\c #\o #\m #\m #\a #\> #\Space)))
(defconstant *digit-chars* (coerce "0123456789" 'list))

(defun number-char-p (ch)
  (if (member ch *digit-chars*)
      t
    nil))
			     
(defun process-recipe-str (str)
  (let ((rslt nil))
    (do*
     ((chars (coerce str 'list) (cdr chars))
      (curr-char (car chars) (car chars)))
     ((null chars) `(#\( ,@(nreverse rslt) #\)))
     (cond
      ((char= curr-char #\()
       (setf rslt (append *lp* rslt)))
      ((char= curr-char #\))
       (setf rslt (append *rp* rslt)))
      ((char= curr-char #\-)
       (setf rslt (append *hyphen* rslt)))
      ((char= curr-char #\,)
       (setf rslt (append *comma* rslt)))
      ((and (char= curr-char #\g)
	    (char= (cadr chars) #\))
	    (number-char-p (car rslt)))
       (push #\Space rslt)
       (push #\g rslt)
       (push #\Space rslt))
      ((and (number-char-p curr-char)
	    (char= (cadr chars) #\c)
	    (char= (caddr chars) #\m))
       (push curr-char rslt)
       (push #\Space rslt))
      ((and (char= curr-char #\VULGAR_FRACTION_ONE_HALF)
	    (char= (car rslt) #\Space))
       (pop rslt)
       (push #\. rslt)
       (push #\5 rslt))
      ((and (number-char-p curr-char)
	    (char= (cadr chars) #\m)
	    (char= (caddr chars) #\l))
       (push curr-char rslt)
       (push #\Space rslt))
      ((char= curr-char #\/)
       (setf rslt (append *or* rslt)))
      (t
       (setf rslt (cons curr-char rslt)))))))

(let ((recipe-input-path (first ext:*args*)))

  (with-open-file
   (ins recipe-input-path :direction :input)
   (do ((ln (read-line ins) (read-line ins)))
       ((null ln))
       (when (> (length ln) 0)
	 (write-line (coerce (process-recipe-str ln) 'string)
		     *standard-output*))))
  )

