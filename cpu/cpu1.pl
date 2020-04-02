#!/usr/bin/env perl
use strict;
use warnings;

my $sum = 0.0;

for my $i (1..50_000_000) {
  $sum += sin($i);
}

printf("sum = %10.6f\n", $sum);
printf("Sum is %s.\n", (abs($sum - 0.811698) < 1.e-4) ? "ok" : " NOT OK");
