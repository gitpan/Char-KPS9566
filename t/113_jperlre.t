# This file is encoded in Char::KPS9566.
die "This file is not encoded in Char::KPS9566.\n" if q{あ} ne "\x82\xa0";

use Char::KPS9566;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいいいいう' =~ /(.{3,4})/) {
    if ("$1" eq "あいいい") {
        print "ok - 1 $^X $__FILE__ ('あいいいいう' =~ /.{3,4}/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あいいいいう' =~ /.{3,4}/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あいいいいう' =~ /.{3,4}/).\n";
}

__END__
