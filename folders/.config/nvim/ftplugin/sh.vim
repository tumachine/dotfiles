# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation, either version 3 of the License, or (at your
# option) any later version.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General
# Public License at <http://www.gnu.org/licenses/> for more details.j#! /bin/bash
# 
# This is a shell script to demonstrate features in vim. It doesn't really
# do anything, it just shows what we can do

# Constants
A=1
B=2

if [[ $A == $B ]]; then
echo "This shows how smartindent works."
    echo "This shows how autoindent workd."
    echo "A and B match."
else
    echo "A and B do not match."
fi

afunction() {
    cmd1
    cmd2
}

if [[ -e file ]]; then
    cmd1
    cmd2
fi
