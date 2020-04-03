#!/usr/bin/env perl
use Fcntl;
use strict;
use warnings;
my $size=8;
my $filename = "disk1-$$.dat";
srand(1);
sysopen(F, $filename,O_WRONLY | O_CREAT) && binmode(F) or die("Error: '$!'");
for (1..2000000) {
  my $pos = substr(1.0+sin($_), 2, $size);
  seek(F, $pos,0);
  syswrite(F, $_); 
}
close(F);
#unlink($filename);

