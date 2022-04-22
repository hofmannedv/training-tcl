#! /usr/bin/tclsh

# -----------------------------------------------------------
# Sortiermodul
#o
# (C) 2022 Frank Hofmann, Freiburg, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc sortOrder {value1 value2} {
        # treffe Aussage, ob v1 gleich v2, v1 kleiner v2 oder v1 größer
        # v2
        #
        puts "vergleiche ${value1} mit ${value2} ... "
        if {$value1 == $value2} {
            return 0
        } else {
            if {$value1 < $value2} {
                return -1
            } else {
                return 1
            }
        }
}
