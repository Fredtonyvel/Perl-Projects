#!/usr/bin/perl
#use warnings;
 
open(INPUT, "<electricity.txt");

my %count;# i had this line of code under while loop. Hence, it keeps give me trouble


while (my $sentence=<INPUT>) {

	 
	$sentence =~s/[^a-zA-Z]/ /g; # this line is to remve all non alphabet
	
	my @sentence = split /\s/,$sentence; #split all words with spaces in to an array element 

	foreach my $str (@sentence){
		$count{$str}++;
	}
	
							}

	foreach my $str (sort keys %count) { #sorting \upper case mixed 
   printf "%-31s %s\n", $str}


close (INPUT);