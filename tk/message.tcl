#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates basic messaging
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

# define push button
button .press -text "Don't push me!" -command {tk_messageBox -title {Information window} -message "Hello!"}

# define exit button
button .quit -text "Quit" -command exit

# arrange button in window
pack .press .quit
