#/usr/local/bin/perl
use strict;
use warnings;

open(INPUT, "<electricity.txt");

my @text;
while (my @text=<INPUT>)
{
	
	
	
	my @sorted =sort{uc ($a) cmp lc ($b)} @text;# both $a and $b are sorted lowercase
	print "@sorted\n"

}


close (INPUT);