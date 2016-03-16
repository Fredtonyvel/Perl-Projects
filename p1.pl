#/usr/local/bin/perl


$target = "- -";
open(INPUT, "<solar.txt");
my $file = 1;

while (<INPUT>) {

	if (/$target/){
		#print $file++;
		#print ": $_";

	}
	#$word ="II";
	
	$sentence= $_ ;
	@roman=split(/ /, $sentence);
	@word=split(/ /, $sentence);
	#$word =s/word[1]/print this word/g;
	#print $roman[1];

	if (@word[1] eq $roman[1])
	{
		@word[1] = " Print this word ";
		print $file++;
		print ": @word";
		

	}
}
close (INPUT);

