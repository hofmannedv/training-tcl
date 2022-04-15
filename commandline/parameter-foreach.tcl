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

    # define parameter counter
    set zaehler 1
    foreach parameter $argv {
    	puts "Parameter ${zaehler}: $parameter"

        # increase counter
        incr zaehler
    }
} else {
    puts "No parameter given:("
}
