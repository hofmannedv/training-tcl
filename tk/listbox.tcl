#! /usr/bin/wish

# -----------------------------------------------------------
# demonstrates a listbox with scrollbar
#o
# (C) 2016 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

proc setLabel {value} {
    .l configure -text $value
}

# define a listbox with 4 a height of 4 elements
listbox .lb -height 4

# attach a vertical scrollbar to the listbox
scrollbar .sb -command [list .lb yview]
.lb configure -yscrollcommand [list .sb set]

# define a label
label .l -text "Nothing Selected"

# bind left mouse button: double click to select
bind .lb <1> {setLabel [.lb get active]}

# insert listbox content
.lb insert 0 sample stuff colors red yellow green

grid .lb -row 0 -column 0 -sticky news
grid .sb -row 0 -column 1 -sticky news
grid .l -row 1 -column 0 -columnspan 2
#grid columnconfigure . 0 -weight 1
#grid rowconfigure . 0 -weight 1
