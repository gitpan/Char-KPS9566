# This file is encoded in Char::KPS9566.
die "This file is not encoded in Char::KPS9566.\n" if q{あ} ne "\x82\xa0";

use Char::KPS9566;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいう' =~ /(あいう)/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X $__FILE__ ('あいう' =~ /あいう/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あいう' =~ /あいう/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あいう' =~ /あいう/).\n";
}

__END__
