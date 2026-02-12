#!/usr/bin/perl
use strict;
use warnings;

my $count = 0;
while (<>) {
    while ($_ =~ /\w+\/(\w*\|)*(VB|VBD|VBG|VBN|VBP|VBZ)(\|\w+)*/g) {
        $count++;
    }
}

print "Total verbs: $count\n";
