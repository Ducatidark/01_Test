       program-id. COMP3 as "COMP3".

       environment division.
       input-output section.
       file-control.
       
       select fichero
       assign to "fichero.txt"
       organization is line sequential
       file status is sw-fs.
       
       configuration section.
       
       data division.
       file section.
       fd  fichero.
       01  re-fichero.
           05  re-texto        pic x(5).
           05  re-cifra        pic S9(5) comp-3.
           05  re-texto2       pic x(5).
       
       working-storage section.
       
       01  sw-fs           pic x(2).
           88  sw-fs-ok                value '00'.
       
       procedure division.
           
           display length of re-cifra 
           
           open output fichero
           
           if  not sw-fs-ok
               go to abend
           end-if
           
           move "texto" to re-texto
           move 14149 to re-cifra
           
           write re-fichero
           
           move "texto" to re-texto
           move 37149 to re-cifra
           
           write re-fichero
           
           if  not sw-fs-ok
               go to abend
           end-if
           
           close fichero

           goback.
       
       
       abend.
          
           display "ERROR. FS=" sw-fs
           
           goback
           .

       end program COMP3.
