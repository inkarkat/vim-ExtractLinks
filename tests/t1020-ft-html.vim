" Test extraction of HTML references.

edit +setf\ html ExtractLinks.html
ExtractLinks
1;/<ol/put

call vimtest#SaveOut()
call vimtest#Quit()
