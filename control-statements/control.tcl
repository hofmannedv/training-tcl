#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrate control statements
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# if-then-else
set value 45

if {$value < 45} {
	puts "value too small"
} elseif {$value == 45} {
	puts "correct value"
} else {
	puts "value too large"
}

# switch
set pattern Hamburg

switch -exact -- $pattern {
	# kommentar
	Hamburg { set value 50 }
	# kommentar
	Berlin { set value 60 }
	# kommentar
	Dresden { set value 80 }
}

puts "value $value"
