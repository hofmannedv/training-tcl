#! /usr/bin/tclsh

# -----------------------------------------------------------
# Ermittle, wieviele Kartons zum Verpacken benötigt werden
# while-Schleife
#o
# (C) Jahr Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# Bestellung: 43 Bücher
# 1 Karton hat Platz für 10 Bücher
# Ziel: 
# wieviele Kartons werden gebraucht, um die 43 Bücher zu verpacken?
#
set bestellung 430000
set buecher_pro_karton 10
set anzahl_kartons 0

set noch_nicht_verpackt $bestellung
while {$noch_nicht_verpackt > 0} {
    incr anzahl_kartons
    incr noch_nicht_verpackt [ expr -1 * $buecher_pro_karton ]
    # puts "Karton ${anzahl_kartons} verpackt ..."

    #if {$noch_nicht_verpackt > 0} {
        # puts "noch ${noch_nicht_verpackt} Bücher übrig"
    #} else {
        # puts "alle Bücher verpackt"
    #}
}

puts "Die Bestellung von ${bestellung} Büchern passt in ${anzahl_kartons} Kartons"
