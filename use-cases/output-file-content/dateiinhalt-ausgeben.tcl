#! /usr/bin/tclsh

# -----------------------------------------------------------
# Dateiinhalt ausgeben
# Parameter: zu lesende Datei
#o
# (C) 2022 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# - Anzahl der Parameter ermitteln
puts "Anzahl Aufrufparameter: $argc"
puts "Aufruf: $argv"

if {$argc == 0} {
    puts "Keine Datei im Aufruf angegeben :("
} else {

    # umwandeln eines Strings in eine Liste (Trennung anhand der
    # Leerzeichen)
    set parameterliste [ split $argv ]

    # Parameterzähler festlegen
    set zaehler 1
    foreach parameter $argv {
    	puts "Aufrufparameter ${zaehler}: $parameter"

        # Lesen und ausgeben der Datei (benannt im Parameter)
        # - open:  Filehandle (Referenz zur Datei) der geöffneten Datei
        set fname $parameter

        # - prüfen, ob Datei existiert
        if [file exists $fname] {
            # - beziehe Filehandle
            # - fange Fehler ab, wenn Filehandle nicht vergebbar
            set err [ catch {set fh [open $fname {r}] } ]

            # - kein Fehler aufgetaucht
            if {$err == 0} {
                # - read:  mit dem Filehandle Dateiinhalt lesen
                while {! [eof $fh] } {
                    # eine Zeile lesen
                    gets $fh line

                    # - Bedingung festlegen
                    set bedingung "Hallo*"
                    # - Zeile prüfen, ob sie die Bedingung erfüllt
                    if { [ string match $bedingung $line ] } {
                        # Zeile ausgeben
                        puts $line
                    }
                }

                # - close: Datei über das Filehandle schliessen
                close $fh
            } else {
                # - Fehler beim Öffnen der Datei
                puts "Fehler (${err}): kein Zugriff auf Datei"
            }
        } else {
            puts "Fehler: ${fname} existiert nicht :("
        }

        # Zähler um eins erhöhen
        incr zaehler
    }
}
