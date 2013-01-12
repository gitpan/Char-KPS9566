# This file is encoded in Char::KPS9566.
die "This file is not encoded in Char::KPS9566.\n" if q{‚ } ne "\x82\xa0";

use Char::KPS9566;
print "1..2\n";

my $__FILE__ = __FILE__;

if (Char::KPS9566::ord('‚ ') == 0x82A0) {
    print qq{ok - 1 Char::KPS9566::ord('‚ ') == 0x82A0 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 Char::KPS9566::ord('‚ ') == 0x82A0 $^X $__FILE__\n};
}

$_ = '‚¢';
if (Char::KPS9566::ord == 0x82A2) {
    print qq{ok - 2 \$_ = '‚¢'; Char::KPS9566::ord() == 0x82A2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = '‚¢'; Char::KPS9566::ord() == 0x82A2 $^X $__FILE__\n};
}

__END__
