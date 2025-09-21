(ns analyze
  (:require [libpython-clj2.python :as py]
            [libpython-clj2.require :as py-req]
            [clojisr.v1.r :as r]))

(comment
  ; getting started with python
  (py/initialize!)

  (py/run-simple-string "print (1+1)")


  (def sys (py/import-module "sys"))

  (println (py/py.- sys version))
  (println (py/py.- sys path))


  (py-req/require-python '[os])
  (os/getcwd)
  
  (py-req/require-python '[pandas :as pd]
                         '[io :refer [StringIO]])
  (def df (pd/read_csv (StringIO "a,b,c\n1,2,3\n4,5,6")))
  
  )


(comment
  ; getting started with R
  (r/r "1+1")
  (r/r '(+ 1 2))


  (r/require-r '[jsonlite])
  (jsonlite/toJSON [1 2 3])
  )



(println "ok")
(shutdown-agents)