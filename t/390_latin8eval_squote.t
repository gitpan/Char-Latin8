# This file is encoded in Latin-8.
die "This file is not encoded in Latin-8.\n" if q{��} ne "\x82\xa0";

use Char::Latin8;

print "1..12\n";

# Char::Latin8::eval '...' has Char::Latin8::eval "..."
if (Char::Latin8::eval ' Char::Latin8::eval " if (\'��\' =~ /[��]/i) { return 1 } else { return 0 } " ') {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has Char::Latin8::eval qq{...}
if (Char::Latin8::eval ' Char::Latin8::eval qq{ if (\'��\' =~ /[��]/i) { return 1 } else { return 0 } } ') {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has Char::Latin8::eval '...'
if (Char::Latin8::eval ' Char::Latin8::eval \' if (qq{��} =~ /[��]/i) { return 1 } else { return 0 } \' ') {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has Char::Latin8::eval q{...}
if (Char::Latin8::eval ' Char::Latin8::eval q{ if (\'��\' =~ /[��]/i) { return 1 } else { return 0 } } ') {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has Char::Latin8::eval $var
my $var = q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } };
if (Char::Latin8::eval ' Char::Latin8::eval $var ') {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has Char::Latin8::eval (omit)
$_ = "if ('��' =~ /[��]/i) { return 1 } else { return 0 }";
if (Char::Latin8::eval ' Char::Latin8::eval ') {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has Char::Latin8::eval {...}
if (Char::Latin8::eval ' Char::Latin8::eval { if (\'��\' =~ /[��]/i) { return 1 } else { return 0 } } ') {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has "..."
if (Char::Latin8::eval ' if (\'��\' =~ /[��]/i) { return "1" } else { return "0" } ') {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has qq{...}
if (Char::Latin8::eval ' if (\'��\' =~ /[��]/i) { return qq{1} } else { return qq{0} } ') {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has '...'
if (Char::Latin8::eval ' if (\'��\' =~ /[��]/i) { return \'1\' } else { return \'0\' } ') {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has q{...}
if (Char::Latin8::eval ' if (\'��\' =~ /[��]/i) { return q{1} } else { return q{0} } ') {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::Latin8::eval '...' has $var
my $var1 = 1;
my $var0 = 0;
if (Char::Latin8::eval ' if (\'��\' =~ /[��]/i) { return $var1 } else { return $var0 } ') {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
