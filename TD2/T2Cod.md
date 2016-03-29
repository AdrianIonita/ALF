Expression
  = head:Integer  tail:(_ ("-") _ Integer )* {
      var result = head, i;
      var nrLiniute =0;
      var nrElem =0;      

      for (i = 0; i < tail.length; i+3)
      {     
        if (tail[i][1] === "-") {nrLiniute++; }
      }
      
      for (i = 0; i < tail.length; i++)
      {     
        nrElem++;
      }


      if(nrLiniute==3 && nrElem==19){return true;}

      else return false;
    }

    Integer "integer"
       = [0-9]+ { return parseInt(text(), 10); }

    _ "whitespace"
        = [ \t\n\r]*

