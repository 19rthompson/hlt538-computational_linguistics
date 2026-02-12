#!/usr/bin/perl
use strict;
use warnings;

my %verbs;
my $count = 0;
while (<>) {
    while ($_ =~ /(\w+)\/(?:\w*\|)*(?:VB|VBD|VBG|VBN|VBP|VBZ)(?:\|\w+)*/g) {
        $verbs{$1}++;
    }
}


my @top20 = (sort { $verbs{$b} <=> $verbs{$a} } keys %verbs)[0..19];


print "Verb Count:\n";

foreach my $verb (@top20) {
    print "$verb\t$verbs{$verb}\n";
}