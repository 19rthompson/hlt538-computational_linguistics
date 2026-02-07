sub palindrome {
    if (@_ <= 1){
        return "1";
    }
    else {
        if (lc($_[0]) eq lc($_[-1])){
            return palindrome(@_[1..$#_-1]);
        }
        else{
            return "0";
        }
    }
}

if (@ARGV){
    print palindrome split(//,@ARGV[0]); print "\n"
}
else{
    print "Usage: perl palindrome.perl <string to evaluate>\n"
}