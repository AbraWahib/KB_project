(deftemplate MAIN::father-of
   (slot father)
   (slot child))

(deftemplate MAIN::mother-of
   (slot mother)
   (slot child))

(deftemplate MAIN::male
   (slot person))

(deftemplate MAIN::female
   (slot person))

(deftemplate MAIN::wife-of
   (slot wife)
   (slot husband))

(deftemplate MAIN::husband-of
   (slot husband)
   (slot wife))

(deftemplate MAIN::uncle-of
   (slot uncle)
   (slot nephew))

(deftemplate MAIN::grandparents-of
   (slot grandparents)
   (slot person))

(deftemplate MAIN::brother-of
   (slot brother)
   (slot sibling))

(defrule MAIN::uncleRule
   (or  (father-of (father ?person1) (child ?person2))
        (mother-of (mother ?person1) (child ?person2)))
   (or  (father-of (father ?person1) (child ?person3))
        (mother-of (mother ?person1) (child ?person3)))
   (or  (father-of (father ?person2) (child ?person4))
        (mother-of (mother ?person2) (child ?person4)))
   (male (person ?person3))
   =>
   (assert (uncle-of (uncle ?person3) (nephew ?person4))))

(defrule MAIN::grandparentRule1
   (father-of (father ?person1) (child ?person2))
   (father-of (father ?person2) (child ?person3))
   =>
   (assert (grandparents-of (grandparents ?person1) (person ?person3))))

(defrule MAIN::grandparentRule2
   (mother-of (mother ?person1) (child ?person2))
   (mother-of (mother ?person2) (child ?person3))
   =>
   (assert (grandparents-of (grandparents ?person1) (person ?person3))))

(defrule MAIN::brotherRule
   (or  (or  (and (father-of (father ?person1) (child ?person2))
                  (father-of (father ?person1) (child ?person3)))
             (and (mother-of (mother ?person1) (child ?person2))
                  (mother-of (mother ?person1) (child ?person3))))
        (and (and (father-of (father ?person1) (child ?person2))
                  (mother-of (mother ?person4) (child ?person3)))
             (or  (wife-of (wife ?person4) (husband ?person1))
                  (husband-of (husband ?person1) (wife ?person4)))))
   (male (person ?person2))
   =>
   (assert (brother-of (brother ?person2) (sibling ?person3))))

