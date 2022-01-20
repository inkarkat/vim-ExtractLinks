EXTRACT LINKS
===============================================================================
_by Ingo Karkat_

DESCRIPTION
------------------------------------------------------------------------------

In forums, emails, documentation, or other plain-text files, one often embeds
references directly in the text. But many URLs are quite long, and this often
breaks the formatting and natural flow of the text. It would be better to
place those below the main text, in a neat reference section. But doing that
manually is tedious and error-prone.

This plugin leverages the :SubstituteAndYankUnique command of the
ExtractMatches.vim plugin ([vimscript #4795](http://www.vim.org/scripts/script.php?script_id=4795)) to extract the (configurable)
URLs found in the buffer and replace them with unique inline anchors.
Additionally, an (again configurable) table of anchor and extracted URL is
placed into a register, for easy pasting. The complete link extraction and
referencing is therefore reduced to a short and painless

    :ExtractMatches | $put

In addition to a general global default, the plugin ships with predefined
pattern and replacement definitions for:
- Markdown
```
[text](URL)
```
- HTML
```
[text] or [&lt;a href="..."&gt;link&lt;/a&gt;"]
```

### SOURCE

- [Inspiration for this plugin](http://superuser.com/questions/717946/links-to-references-in-mutt-or-vim)

USAGE
------------------------------------------------------------------------------

    :[range]ExtractLinks [x]
                            Extract all links in [range] / the buffer with a
                            (filetype-specific, by default "[N]") unique
                            reference, and generate a corresponding link table
                            that associates the references with the respective
                            original links (default: "[N] {link}"). This is placed
                            into register [x] / the default register, so it can be
                                :$put
                            into the buffer (probably at the end, as a legend).

### EXAMPLE

    This text references http://www.vim.org/ and http://w3.org/.
    :ExtractLinks
    This text references [1] and [2].
    :put
    [1] http://www.vim.org/
    [2] http://w3.org/

INSTALLATION
------------------------------------------------------------------------------

The code is hosted in a Git repo at
    https://github.com/inkarkat/vim-ExtractLinks
You can use your favorite plugin manager, or "git clone" into a directory used
for Vim packages. Releases are on the "stable" branch, the latest unstable
development snapshot on "master".

This script is also packaged as a vimball. If you have the "gunzip"
decompressor in your PATH, simply edit the \*.vmb.gz package in Vim; otherwise,
decompress the archive first, e.g. using WinZip. Inside Vim, install by
sourcing the vimball or via the :UseVimball command.

    vim ExtractLinks*.vmb.gz
    :so %

To uninstall, use the :RmVimball command.

### DEPENDENCIES

- Requires Vim 7.0 or higher.
- Requires the ingo-library.vim plugin ([vimscript #4433](http://www.vim.org/scripts/script.php?script_id=4433)), version 1.015 or
  higher.
- Requires the ExtractMatches.vim plugin ([vimscript #4795](http://www.vim.org/scripts/script.php?script_id=4795)), version 1.20 or
  higher.

CONFIGURATION
------------------------------------------------------------------------------

For a permanent configuration, put the following commands into your vimrc:

A Dictionary (to avoid multiple identical entries) containing regular
expressions (as keys, the values are irrelevant) to capture links in the
buffer:

    let g:ExtractLinks_Expressions = {'\<link: \S\+\>', 1}

The replacement of the matched link inside the buffer:

    let g:ExtractLinks_ReplacementInline = '[\#]'

The replacement of the matched link for the link table:

    let g:ExtractLinks_ReplacementExtraction = '[\#] &\n'

CONTRIBUTING
------------------------------------------------------------------------------

Report any bugs, send patches, or suggest features via the issue tracker at
https://github.com/inkarkat/vim-ExtractLinks/issues or email (address below).

HISTORY
------------------------------------------------------------------------------

##### 1.00    20-Feb-2014
- First published version.

##### 0.01    19-Feb-2014
- Started development.

------------------------------------------------------------------------------
Copyright: (C) 2014-2022 Ingo Karkat -
The [VIM LICENSE](http://vimdoc.sourceforge.net/htmldoc/uganda.html#license) applies to this plugin.

Maintainer:     Ingo Karkat &lt;ingo@karkat.de&gt;
