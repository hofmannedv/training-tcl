set f [open [lindex $argv 0]]                     ;# Datei mit Name aus 1. Parameter öffnen
gets $f                                           ;# Kopfzeile überlesen
set gesamt 0
foreach zeile [split [read -nonewline $f] \n] {   ;# Datei lesen und in Zeilen zerlegen
   regsub -all {\t+} $zeile \t spalten            ;# mehrfache Tabs zu einem machen, kann bei einfachen Tabs entfallen
  lassign [split $spalten \t] anzahl - - distanz  ;# Anzahl und Distanz aus der durch split entstehenden Liste holen
  incr gesamt [expr $anzahl * $distanz]
}
puts [format "Gesamt: %d km" $gesamt]
