#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates the scrollbar widget
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc scrolledText { f width height } {
	# define frame
	frame $f

	# the grid settings allow the window to be resized
	text $f.text -width $width -height $height \
		-setgrid true -wrap none \
		-xscrollcommand [ list $f.xscroll set ] \
		-yscrollcommand [ list $f.yscroll set ]

	# horizontal scrollbar
	scrollbar $f.xscroll -orient horizontal \
		-command [ list $f.text xview ]

	# vertical scrollbar
	scrollbar $f.yscroll -orient vertical \
		-command [ list $f.text yview]

	# arrange widgets
	pack $f.xscroll -side bottom -fill x
	pack $f.yscroll -side right -fill y
	pack $f.text -side left -fill both -expand true
	pack $f -side top -fill both -expand true

	return $f.text
}

# main program
# define scrolled text window
set textWindow [ scrolledText .f 40 8 ]

# read from file
set textfile [ open /etc/passwd ]

# insert text into text window
$textWindow insert end [ read $textfile ]

# close file
close $textfile
