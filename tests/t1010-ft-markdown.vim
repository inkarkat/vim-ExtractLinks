" Test extraction of Markdown links.

edit +setf\ markdown ExtractLinks.mkd
ExtractLinks
$put

call vimtest#SaveOut()
call vimtest#Quit()
