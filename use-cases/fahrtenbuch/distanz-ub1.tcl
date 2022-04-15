set gesamtdistanz 0
while {1} {
       set zeile [gets stdin]
       if {[eof stdin]} {
           close stdin
           break
       }

       set zeile [regsub -all \t+ $zeile \t]
       set zeile [split $zeile \t]
       if {[string is integer -strict [lindex $zeile 0]]} {
         incr gesamtdistanz [expr [lindex $zeile 0] * [lindex $zeile 3]]
       }
}
puts "Gesamt: $gesamtdistanz km"
