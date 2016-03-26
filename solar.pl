#!/usr/bin/perl
#use warnings;
 
print "Part3: Replacing all digits with the name of the digit\n";

open(FH9, "<part3.txt");# change  this input file
open (FH10, ">letter.txt");

while (<FH9>)
{
	#hash key-value pair for identifying numbers 0-9 
	#and letters zero-nine
	my %digits = (			
		0 => 'zero',		
		1 => 'one',
		2 => 'two',
		3 => 'three',
		4 => 'four',
		5 => 'five',
		6 => 'six',
		7 => 'seven',
		8 => 'eight',
		9 => 'nine',
		);

	@element = split(//, $_);
	#print "@element\n";

	for my $keys (@element)
	{
		#print "Number: $digit => Letter: $digits{$digit}\n";
		$keys =~ s/[0-9]/$digits{$keys}/g;	#takes all the digits in file and replaces it with the values in the hash
		print "$keys ";
		print FH10 "$keys ";	#prints to the output file
	}
	
}


close (FH9);
close (FH10);