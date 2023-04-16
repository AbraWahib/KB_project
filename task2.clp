(deftemplate MAIN::set
   (slot name)
   (multislot elements)
   (multislot subset-of))

(deffacts MAIN::sets
   (set (name "A") (elements "1" "2" "3") (subset-of "B"))
   (set (name "B") (elements "1" "2" "3" "red" "green"))
   (set (name "C") (elements "red" "green" "yellow" "blue")))

