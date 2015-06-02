#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates reading files as given on the commandline
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

if {$argc == 0} {
	# no filename given as commandline parameter
	puts "argument missing: filename"

} else {
	# read filename
	set fname [lindex $argv 0]

	# evaluating given filename
	puts "evaluating given filename: $fname"

	if [file exists $fname] {
		# catch reading error
		set err [ catch { set fh [open $fname {r}] } ]

		if {$err != 0} {
			# throw error message
			puts "cannot open file"

		} else {
			# read and output file content
			while {! [eof $fh] } {
				# read line from file
				gets $fh line

				# output line
				puts $line
			}

			# close file
			close $fh
		}
	} else {
		# given filename does not exist
		puts "given filename not found: $fname"
	}
}
