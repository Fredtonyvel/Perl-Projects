open(INPUT, "<solar.txt");

while(<INPUT>)
{
	$needToFind = "- -";	#the pattern we are going to look for
	print "$_" if m/$needToFind/;	#searching through the file to find 
									#and print lists with matching pattern
}
close(INPUT);