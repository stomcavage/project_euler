;; Project Euler problem 4:
;; 
;; A palindromic number reads the same both ways. The largest palindrome made 
;; from the product of two 2-digit numbers is 9009 = 91 99.
;;
;; Find the largest palindrome made from the product of two 3-digit numbers.

(ns com.tomcavage.project-euler.problem4.core)

(defn palindrome? [n]
	(= n (java.math.BigInteger. (apply str (reverse (str n))))))

(defn palindromeList [] 
	(for [
		a (range 100 1000) 
		b (range 100 1000) 
		:while (>= a b)
		:let [c (* a b)]
		:when (palindrome? c)] 
		c))

(defn -main []
	(do (println (apply max (palindromeList)))))
