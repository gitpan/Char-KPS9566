# This file is encoded in Char::KPS9566.
die "This file is not encoded in Char::KPS9566.\n" if q{��} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use Char::KPS9566;
print "1..2\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    print "ok - 2 # SKIP $^X $0\n";
    exit;
}

mkdir('directory',0777);
if (rmdir('directory')) {
    print "ok - 1 rmdir $^X $__FILE__\n";
    system("mkdir directory");
}
else {
    print "not ok - 1 rmdir: $! $^X $__FILE__\n";
}
rmdir('directory');

mkdir('D�@�\',0777);
if (rmdir('D�@�\')) {
    print "ok - 2 rmdir $^X $__FILE__\n";
    system("mkdir D�@�\");
}
else {
    print "not ok - 2 rmdir: $! $^X $__FILE__\n";
}
rmdir('D�@�\');

__END__
