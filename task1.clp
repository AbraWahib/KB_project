(deftemplate MAIN::fatherOf
   (slot father)
   (slot child))

(deftemplate MAIN::motherOf
   (slot mother)
   (slot child))

(deftemplate MAIN::parentOf
   (multislot person)
   (slot child))

(deftemplate MAIN::isFather
   (slot person))

(deftemplate MAIN::isMother
   (slot person))

(deftemplate MAIN::isSon
   (slot person))

(deftemplate MAIN::male
   (slot person))

(deftemplate MAIN::female
   (slot person))

(deffacts MAIN::family
   (fatherOf (father Tom) (child John))
   (motherOf (mother Susan) (child John))
   (parentOf (person Tom Susan) (child John)))

(deffacts MAIN::fatherMotherSon
   (isFather (person Tom))
   (isMother (person Susan))
   (isSon (person John)))

(deffacts MAIN::gender
   (male (person Tom))
   (male (person John))
   (female (person Susan)))

