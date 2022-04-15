#! /usr/bin/tclsh

# -----------------------------------------------------------
# Output the script parameters using a for loop
#o
# (C) 2022 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# - detect the number of script parameters
puts "Number of parameters: $argc"
puts "Script call: $argv"

# - output the parameters
if {$argc > 0} {

    # split the parameters into a list (split by space)
    set parameterliste [ split $argv ]

    # start with position as index 1
    for {set position 1} {$position <= $argc} {incr position} {
        set parameterwert [lindex $parameterliste [ expr $position - 1]]
        puts "Parameter ${position}: ${parameterwert}"
    }

} else {
    puts "No parameter given:("
}
