#!/usr/bin/env perl
use strict;
use warnings;

my $filename = "diskcpu1-$$.txt";

print("Creating file with gibberish...\n");
open(FH, ">$filename") or die("Error: '$@'");
for my $i (1..( 5_000_000) ) {
  print(FH substr( crypt($i, "ab"), 2, -1 ), "\n");
}
close(FH);

print("Starting sort...\n");
system("sort $filename > /dev/null");
my (undef, undef, $time) = times();
printf("Used cpu time: %4.2f\n", $time);
unlink($filename);
