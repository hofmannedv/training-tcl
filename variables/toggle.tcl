#! /usr/bin/tclsh

# -----------------------------------------------------------
# toggle bit
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

set binwert ""

for { set i 0 } { $i < 8 } { incr i } {
	set bit [ string index $binarystring $i ]
	set binwert [ concat $binwert $bit ]
    puts $binwert
}

for { set i 0 } { $i < 5 } { incr i } {
	set wert [ lindex $binwert 7 ]
	
	if { $wert == 1 } {
		set wert "0"
	} else {
		set wert "1"
	}
	set binwert [ lreplace $binwert 7 7 $wert ]
    puts $binwert
}
puts "Binary value of $originalvalue is $binarystring"

