#! /usr/bin/tclsh

# -----------------------------------------------------------
# demonstrates how to read a driver's logfile (Fahrtenbuch)
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define total distance, and current position
set gesamtdistanz 0
set aktuelleZeile 0

# read from stdin until end of file
while {1} {
    set zeile [gets stdin]
    if {[eof stdin]} {
        close stdin
        break
    }

	# skip header
	if {$aktuelleZeile > 0} {

		# replace all column separators by a ":"
		set neuezeile [ regsub -all "\t+" $zeile ":" ]

		# split the line by ":", and extract count, and distance
		set felder [ split $neuezeile ":" ]
		set anzahl [ lindex $felder 0 ]
		set distanz [ lindex $felder 3 ]

		# calculate distance, and total distance
		set zwischensumme [ eval "expr $anzahl * $distanz" ]
		set gesamtdistanz [ eval "expr $gesamtdistanz + $zwischensumme" ]
	}

	incr aktuelleZeile
}

# output total distance
puts "Gesamt: $gesamtdistanz km"
