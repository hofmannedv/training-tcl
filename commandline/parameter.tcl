#! /usr/bin/tclsh

# -----------------------------------------------------------
# Parameter des Skripts ausgeben
#o
# (C) 2022 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# - Anzahl der Parameter ermitteln
puts "Anzahl Aufrufparameter: $argc"
puts "Aufruf: $argv"

# - Parameterwerte ausgeben
if {$argc > 0} {

    # umwandeln eines Strings in eine Liste (Trennung anhand der
    # Leerzeichen)
    set parameterliste [ split $argv ]

    # Beginn mit dem Wert Position 1
    for {set position 1} {$position <= $argc} {incr position} {
        set parameterwert [lindex $parameterliste [ expr $position - 1]]
        puts "Aufrufparameter ${position}: ${parameterwert}"
    }

    # Beginn mit dem Wert Position 0
    for {set position 0} {$position < $argc} {incr position} {
        set parameterwert [lindex $parameterliste $position ]
        set anzeigeposition [ expr $position + 1]
        puts "Aufrufparameter ${anzeigeposition}: ${parameterwert}"
    }

    # Parameterzähler festlegen
    set zaehler 1
    foreach parameter $argv {
    	puts "Aufrufparameter ${zaehler}: $parameter"

        # Zähler um eins erhöhen
        incr zaehler
    }
} else {
    puts "Keine Aufrufparameter :("
}
