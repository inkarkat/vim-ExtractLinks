" Test command error when no links are found.

call setline(1, 'Nothing to see here.')
call vimtest#StartTap()
call vimtap#Plan(1)
call vimtap#err#ErrorsLike('^E486: ', 'ExtractLinks', 'Pattern not found error shown')

call vimtest#Quit()
