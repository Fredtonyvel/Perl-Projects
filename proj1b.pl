open (FH, "<electricity.txt");

$command = <ARGV>;

if ($command == 1)
{	
	print "Part2: Instruction 1: \n\n";
	print "File sorted alphabetically ignoring capitalization:\n";

	my %hash;

	while ($word = <FH>)
	{
		$word =~ s/[^a-zA-Z]/ /g;		#removes all non-alphanumeric characters
		
		foreach $line (split /\s+/, $word)		#splits by removing all spaces between words
		{
			$hash{$line}++;				#increment hash count
			#print "$line\n";
		}

		foreach $line (sort {lc($a) cmp lc($b)} keys %hash)		#sorts alphabetically regardless of case sensitivity
		{
			print "$line\n";
		}
	}
}

close (FH);