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
if (rename('directory','directory2')) {
    print "ok - 1 rename $^X $__FILE__\n";
    rename('directory2','directory');
}
else {
    print "not ok - 1 rename: $! $^X $__FILE__\n";
}
rmdir('directory');

mkdir('D�@�\',0777);
rmdir('D2�@�\');
if (rename('D�@�\','D2�@�\')) {
    print "ok - 2 rename $^X $__FILE__\n";
    rename('D2�@�\','D�@�\');
}
else {
    print "not ok - 2 rename: $! $^X $__FILE__\n";
}
rmdir('D�@�\');

__END__
