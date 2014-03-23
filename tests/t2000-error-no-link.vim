" Test command error when no links are found.

call setline(1, 'Nothing to see here.')
call vimtest#StartTap()
call vimtap#Plan(1)
call vimtap#err#ErrorsLike('E486: Pattern not found:', 'ExtractLinks', 'E486 thrown')

call vimtest#Quit()
