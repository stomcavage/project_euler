;; Project Euler Problem 5:
;;
;; 2520 is the smallest number that can be divided by each of the numbers from 
;; 1 to 10 without any remainder.
;; 
;; What is the smallest positive number that is evenly divisible by all of the 
;; numbers from 1 to 20?

(ns com.tomcavage.project-euler.problem5.core)

;; Greast Common Divisor using Euclid's algorithm
(defn gcd [a b]
	(cond 
		(zero? b) a
		:otherwise (recur b (mod a b))))

;; Least Common Multiple
(defn lcm [a b] 
	(/ (* a b) (gcd a b)))

;; Find the LCM of all numbers between 1 and 20, inclusive
(defn -main []
	(do (println (reduce (fn [a b] (lcm a b)) (range 1 21)))))
