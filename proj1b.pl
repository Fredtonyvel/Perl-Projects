open (FH, "<electricity.txt");

$command = <ARGV>;

if ($command == 1)
{	
	print "Part2: Instruction 1: \n\n";
	print "File sorted alphabetically ignoring capitalization:\n";
	while (<FH>)
	{
		foreach $line (split /\s+/, $_)
		{
			$line =~ s/[^a-z]/ /gi;
			print "$line\n";
		}
	}
}

close (FH);