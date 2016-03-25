#!/usr/bin/perl

# months.plx

use warnings;

use strict;


print "Enter the month\n";
chomp( my $month =<STDIN>) ;

print qw(

zero one two

three four five

six seven eight

nine )[$month];