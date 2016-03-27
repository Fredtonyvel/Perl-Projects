#!/usr/bin/perl
#use warnings;
 
# 1 : alphabetically (ignoring capitalization)

open(INPUT, "<electricity.txt");

my %count;# i had this line of code under while loop. Hence, it keeps give me trouble


while (my $sentence=<INPUT>) {

	 
	$sentence =~s/[^a-zA-Z]/ /g; # this line is to remve all non alphanumeric
	
	my @sentence = split /\s/,$sentence;

	foreach my $str (@sentence){
		$count{$str}++;
	}
	
							}

	foreach my $str (sort {lc ($a) cmp lc ($b)} keys %count) { #uc ($a) cmp lc ($b)}
   printf "%-31s %s\n", $str	}


close (INPUT);