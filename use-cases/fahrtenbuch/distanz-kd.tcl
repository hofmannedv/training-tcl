#! /usr/bin/wish

set fname "fahrtenbuch.txt"
set fh [open $fname {r}] 
set gesamtkm 0

while {! [eof $fh] } {
	# read line from file
	gets $fh line

	# output line
	puts $line

	set line [regsub -all \t+ $line ":" ]

	set spalten [ split $line ":" ]
	if { [ regexp {[0-9]+} [ lindex $spalten 0 ] ] } {

		set km [ expr [lindex $spalten 0] * [lindex $spalten 3] ]
		puts "${km}km"
		set gesamtkm [ expr $gesamtkm + $km ]
	}

	# output line
	puts $line

}

puts "Gesamt-km: $gesamtkm"

close $fh

