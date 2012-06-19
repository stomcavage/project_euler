;; Project Euler problem 6
;;
;; The sum of the squares of the first ten natural numbers is,
;; 
;; 	1^2 + 2^2 + ... + 10^2 = 385
;;  
;; The square of the sum of the first ten natural numbers is,
;; 
;; 	(1 + 2 + ... + 10)^2 = 55^2 = 3025
;; 
;; Hence the difference between the sum of the squares of the first ten natural 
;; numbers and the square of the sum is 3025 - 385 = 2640.
;; 
;; Find the difference between the sum of the squares of the first one hundred 
;; natural numbers and the square of the sum.

(ns com.tomcavage.project-euler.problem6.core)

(defn sumUpTo [n]
	(reduce + (range 1 (inc n))))

(defn squareUpTo [n]
	(reduce + (map (fn [x] (* x x)) (range 1 (inc n)))))

(defn -main []
	(do (println 
		(- 
			(* (sumUpTo 100) (sumUpTo 100)) 
			(squareUpTo 100)))))
