#!/usr/bin/perl
use warnings;

open (FH, "<solar.txt");

$command = <ARGV>;		#Command line arguments for user input

if ($command == 1)
{
	print "Part 1: Instruction 1: \n\n";
	print "Records that don't list a discoverer in the eighth field:\n";

	while (<FH>)
	{
		$needToFind = "- -";		#the pattern we are going to look for
		print "$_" if m/$needToFind/;	#searching through the file to find 
										#and print lists with matching pattern
	}
}

elsif ($command == 2)
{
	print "Part 1: Instruction 2: \n\n";
	print "All records printed with second field omitted:\n";

	while (<FH>)
	{
		@array = split(/ /, $_);	#splits each line in the file into its own array
		#print "@array";

		#@array2 = splice(@array, 1, 1);	#deletes all the elements in the 2nd field, but stores deleted elements in array2
		#print "@array2\n";					#prints all the elements in the 2nd field

		@array2 = splice(@array, 1, 1);		#deletes all the elements in the 2nd field
		print "@array";						#prints all the records without 2nd field 
	}
}

elsif ($command == 3)
{
	print "Part 1: Instruction 3: \n\n";
	print "All records printed with second field omitted:\n";

	while (<FH>)
	{
		if(/-\d+/)
		{
			print "$_";
		}
	}
}

elsif ($command == 4)
{
	print "Part 1: Instruction 4: \n\n";
	print "Objects discovered by the Voyager2 space probe:\n";

	while (<FH>)
	{
		$search = "Voyager2";

		print "$_" if m/$search/;
	}	
}

elsif ($command == 5)
{
	print "Part 1: Instruction 5: \n\n";
	print "Orbital period given in seconds rather than days:\n";

	while (<FH>)
	{
		@array = split(/ /, $_);
		#print "@array";

		@array2 = @array[4] * 86400;	#takes the 4th field and multiplies it by 86400 to convert days to seconds
		@array[4] = @array2;
		#print "@array2\n";		#prints only the 4th field converted from days to seconds
		print "@array";			#prints file with 4th field converted from days to seconds
	}	
}

close(FH);