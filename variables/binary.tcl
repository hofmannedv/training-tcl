#! /usr/bin/tclsh

# -----------------------------------------------------------
# output as binary value
#o
# (C) 2016-2022 Frank Hofmann, Freiburg, Germany
# Thanks to Klaus Dierke, Eichwalde, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc dec2bin { decimalvalue } {

	set binarystring ""

	for { set i 0 } { $i < 8 } { incr i } {
		set wert [ expr $decimalvalue & 1 ]
		set binarystring "${wert}${binarystring}"
		set decimalvalue [ expr $decimalvalue >> 1 ]
	}

	return $binarystring
}

# define variables (hex aa)
set register 170
set binarystring ""

set originalvalue $register

set binarystring [ dec2bin $register ]

puts "Binary value of $originalvalue is $binarystring"

