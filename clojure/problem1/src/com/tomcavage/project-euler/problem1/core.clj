;; Projct Euler problem 1
;;
;; If we list all the natural numbers below 10 that are multiples of 3 or 5, 
;; we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all 
;; the multiples of 3 or 5 below 1000.

(ns com.tomcavage.project-euler.problem1.core)

(defn do-sum [start-num stop-num]
  (reduce +
    (filter 
      (fn [x] (or (zero? (rem x 3)) (zero? (rem x 5)))) 
      (range start-num stop-num))))

(defn -main []
	(do (println (do-sum 3 1000))))
