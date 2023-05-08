       program-id. ENEB006 as "ENEB006".

       environment division.
       configuration section.

       data division.
       working-storage section.
       01 myvar pic x(20).
       01 myvar2 pic 9(4).
       copy ENEF001.
       
       procedure division.
           compute myvar2 = function random(1) * 20 + 1 
           display myvar2.
           move 1 to myvar.
           call 'ENEB008' using by content myvar
           
           call 'ENEB008' using myvar
       
           display 'hbu modif 1'
           goback.
       
       

       end program ENEB006.
