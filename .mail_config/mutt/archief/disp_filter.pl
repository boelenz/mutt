#!/usr/bin/env perl
##
## a display filter for mutt.
##

use strict;

while (<STDIN>) {
        print;
        last if (/^$/);
}

open (OUT, "| par") or *OUT = *STDOUT;
while (<STDIN>) {
        print OUT "$_";
}
close(OUT);

