# This file is encoded in Latin-8.
die "This file is not encoded in Latin-8.\n" if q{��} ne "\x82\xa0";

use Char::Latin8;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('x����' =~ /(������)/) {
    print "not ok - 1 $^X $__FILE__ not ('x����' =~ /������/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('x����' =~ /������/).\n";
}

__END__