#! /usr/bin/wish

# -----------------------------------------------------------
# transfor a string into a list
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define a string (csv style)
set cities "Potsdam,Berlin,Dresden,Hamburg"
puts "original string: $cities"

# split by comma (default delimiter: space)
puts "single fields: [ split $cities , ]"

# define a string with an empty field
set postcodes "14467,10119,01099,"

# split by comma
puts "single fields: [ split $postcodes , ]"
