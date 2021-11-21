" Test extraction of the general default configuration.

edit ExtractLinks.txt
ExtractLinks
$put

call vimtest#SaveOut()
call vimtest#Quit()
