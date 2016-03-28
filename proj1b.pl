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

if ($command == 2)
{
	print "Part2: Instruction 2: \n\n";
	print "File sorted alphabetically with upper case words in front of lower case words:\n";

	my %hash;

	while ($word = <FH>)
	{
		$word =~ s/[^a-z]/ /gi;		#removes all non-alphanumeric characters
		
		foreach $line (split /\s+/, $word)		#splits by removing all spaces between words
		{
			$hash{$line}++;				#increment hash count
			#print "$line\n";
		}

		foreach $line (sort keys %hash)		#sorts alphabetically with uc infront of lc
		{
			print "$line\n";
		}
	}
}

if ($command == 3)
{
	print "Part2: Instruction 3: \n\n";
	print "Frequency from high to low:\n";

	my %hash;

	while ($word = <FH>)
	{
		$word =~ s/[^a-z]/ /gi;		#removes all non-alphanumeric characters
		
		foreach $line (split /\s+/, $word)		#splits by removing all spaces between words
		{
			$hash{$line}++;				#increment hash count
			#print "$line\n";
		}

		foreach $line (sort {$hash{$b} <=> $hash{$a}} keys %hash)		#sorts words by frequency from high to low
		{
			printf "$line ==> $hash{$line}\n";
		}
	}
}

if ($command == 4)
{
	print "Part2: Instruction 4: \n\n";
	print "Frequency by alphabetical order:\n";

	my %hash;

	while ($word = <FH>)
	{
		$word =~ s/[^a-z]/ /gi;		#removes all non-alphanumeric characters
		
		foreach $line (split /\s+/, $word)		#splits by removing all spaces between words
		{
			$hash{$line}++;				#increment hash count
			#print "$line\n";
		}

		foreach $line (sort keys %hash)		#sorts alphabetically by frequency
		{
			printf "$line ==> $hash{$line}\n";	#prints sorted words and frequency by alphabetical order
		}
	}
}

close (FH);