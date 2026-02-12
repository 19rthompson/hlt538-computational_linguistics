$n = shift;
$u = "1" x $n;
if ($u =~ /^(11+?)\1+$/) {
    $f = length($1);
    print "$n is divisible by $f\n";
} else {
    print "$n is prime\n";
}