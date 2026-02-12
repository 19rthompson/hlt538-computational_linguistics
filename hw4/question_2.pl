my $s = qq{@ARGV};   

if ($s =~ /^DT NN (?<rec>DT NN(?: (?&rec))? VBD)$/) {
    print "1\n";
}