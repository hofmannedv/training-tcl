#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate the usage of procedures and callbacks
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc power {basis exponent} {
	# calculate the power
	# set default return value
	set result 1
	
	# calculate the result
	while {$exponent > 0} {
		set result [ expr $result * $basis ]
		
		# adjust exponent
		set exponent [ expr $exponent - 1 ]
	}

	# return power
	return $result
}

# define input field: basis, length: 6 digits
entry .basis -width 6 -relief sunken -textvariable basis

# define label
label .label1 -text "The"

# define input field: exponent, length: 6 digits
entry .exp -width 6 -relief sunken -textvariable exponent

# define label
label .label2 -text ". power of"

# define label for result
label .res -textvariable result

# define label
label .label3 -text "is: "

# additional training tasks:
# add exit button
# add button to clear the input fields

# arrange elements in grid frame
pack .label1 .exp .label2 .basis .label3 .res -side left -padx 1m -pady 2m

# bind keys 
bind .basis <Return> {set result [ power $basis $exponent ]}
bind .exp <Return> {set result [ power $basis $exponent ]}

