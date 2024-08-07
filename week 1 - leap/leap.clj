(ns leap)

(defn leap-year? [year] 
  (cond 
    (and (= (mod year 100) 0) (= (mod year 400) 0)) true
    (and (= (mod year 4) 0) (not (= (mod year 100) 0))) true
    :else false)
)