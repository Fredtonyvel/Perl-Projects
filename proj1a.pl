open(INPUT, "<solar.txt");

while(<INPUT>)
{
	$needToFind = "- -";
	print "$_" if m/$needToFind/;
}
close(INPUT);