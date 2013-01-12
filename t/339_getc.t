# This file is encoded in Char::KPS9566.
die "This file is not encoded in Char::KPS9566.\n" if q{‚ } ne "\x82\xa0";

use Char::KPS9566;
print "1..1\n";

my $__FILE__ = __FILE__;

my @getc = ();
while (my $c = Char::KPS9566::getc(DATA)) {
    last if $c eq "\n";
    push @getc, $c;
}
my $result = join('', map {"($_)"} @getc);

if ($result eq '(1)(2)(‚ )(‚¢)') {
    print "ok - 1 $^X $__FILE__ 12‚ ‚¢ --> $result.\n";
}
else {
    print "not ok - 1 $^X $__FILE__ 12‚ ‚¢ --> $result.\n";
}

__END__
12‚ ‚¢
