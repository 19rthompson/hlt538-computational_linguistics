#!/usr/bin/perl
my @stopwords = qw(a an the that this these those am is are was were be being been);
my %stopwords;
foreach $word (@stopwords) {
   $stopwords{$word} = undef
}
print $ARGV[0],' ';
foreach $word (@ARGV[1..$#ARGV]) {
    unless (exists $stopwords{lc($word)}){
        print $word.' ';
    }
}
print "\n"
