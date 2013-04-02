(defproject tulos/bberg-sdk "3.6.1.0-SNAPSHOT"
  :description "Wrapping up the Bloomberg java SDK jars into a lein project."
  :url "http://github.com/tulos/bberg-sdk/"
  :license {:name "Bloomberg Open API"
            :url "http://raw.github.com/tulos/bberg-sdk/master/LICENSE.txt"}
  ;; Where are the Bloomberg SDK class files?
  :filespecs [{:type :path :path "bberg-sdk-jars"}]
  :jar-exclusions [#".*\.(jar)$"]
  :uberjar-exclusions [#".*\.(jar)$"])
