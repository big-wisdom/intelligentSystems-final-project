* ca
	* calls ca-read

* ca-read (clist rlist)
	* if words is empty return clist and rlist
	* else
		* grab first word
			* return 4 variables
				* ? from ca-actions
				* ? from ca-requests
				* ca-requests and ca-actions call with-iterator
					* with-iterator takes in 3 things but is passed 7 (this thing is incomprehensible)
					* it is also a macro and I don't really understand what those are
* at some points ca-requests calls tests
* after is defined by define-ca-test
	* it takes in 8 things
	* in the comments it shows three things
		* it calls the first one limit, next var, next pattern
		* this kinda implies that you after checks EVERYTHING after itself
