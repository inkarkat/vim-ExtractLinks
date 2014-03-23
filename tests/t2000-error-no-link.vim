" Test command error when no links are found.

call setline(1, 'Nothing to see here.')
call vimtest#StartTap()
call vimtap#Plan(1)
try
    ExtractLinks
    call vimtap#Fail('expected E486')
catch
    call vimtap#err#ThrownLike('E486: Pattern not found:', 'E486 thrown')
endtry

call vimtest#Quit()
