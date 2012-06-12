;; Project Euler Problem 3:
;; 
;; The factorList of 13195 are 5, 7, 13 and 29.
;;
;; What is the largest prime factor of the number 600851475143 ?

(ns com.tomcavage.project-euler.problem3.core)

(defn primeFactors
	([n] 
		(primeFactors n 2 []))
	([n div factorList]
		(cond
			(< n 2) 
				factorList
			(zero? (rem n div))
				(recur (/ n div) div (conj factorList div)) 
			:otherwise
				(recur n (inc div) factorList))))

(defn -main []
	(do (println (apply max (primeFactors 600851475143)))))
