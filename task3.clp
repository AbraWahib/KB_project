(defrule MAIN::rule1
   (starter-turning yes)
   (got-any-petrol yes)
   =>
   (printout t "Call the AA" crlf))

(defrule MAIN::rule2
   (starter-turning yes)
   (got-any-petrol no)
   =>
   (printout t "Buy some!" crlf))

(defrule MAIN::rule3
   (starter-turning no)
   (lights-working no)
   =>
   (printout t "Charge battery" crlf))

(defrule MAIN::rule4
   (starter-turning no)
   (lights-working yes)
   (solenoid-click yes)
   (terminals-clean yes)
   =>
   (printout t "Replace Starter" crlf))

(defrule MAIN::rule5
   (starter-turning no)
   (lights-working yes)
   (solenoid-click yes)
   (terminals-clean no)
   =>
   (printout t "Clean Terminals" crlf))

(defrule MAIN::rule6
   (starter-turning no)
   (lights-working yes)
   (solenoid-click no)
   (solenoid-fuse-ok yes)
   =>
   (printout t "Replace Solenoid" crlf))

(defrule MAIN::rule7
   (starter-turning no)
   (lights-working yes)
   (solenoid-click no)
   (solenoid-fuse-ok no)
   =>
   (printout t "Replace Fuse" crlf))

