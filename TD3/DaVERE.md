/*Ionita Adrian ,Danu Cosmin 1220f
 * DaVERE
 *-if-then-else
 */

start=ifstatement

ifstatement
="Adunare,vere:\n" [" "]*
 "Deci vere... "[" "]*left:(cuv) " == " right:(integer) 
 "\n" [" "]*
 "si,vere... "[" "]*left:(cuv) " == " right1:(integer) 
  sfarsitOperatie {return right1+right;}
   
   /
  
"Scadere,vere:\n" [" "]*
 "Deci vere... "[" "]*left:(cuv) " == " right:(integer) 
 "\n" [" "]*
 "si,vere... "[" "]*left:(cuv) " == " right1:(integer) 
  sfarsitOperatie {return right-right1;}
    
    /
  
"Inmultire,vere:\n" [" "]*
 "Deci vere... "[" "]*left:(cuv) " == " right:(integer) 
 "\n" [" "]*
 "si,vere... "[" "]*left:(cuv) " == " right1:(integer) 
  sfarsitOperatie {return right*right1;}
    
    /
  
"Impartire,vere:\n" [" "]*
 "Deci vere... "[" "]*left:(cuv) " == " right:(integer) 
 "\n" [" "]*
 "si,vere... "[" "]*left:(cuv) " == " right1:(integer) 
  sfarsitOperatie {return right/right1;}
       
     
cuv
=[a-zA-Z]+

integer "integer"
=digits:[0-9]+ {return parseInt(digits.join(""),10);}

sfarsitOperatie
=[" "]*",gata vere"
