#/usr/local/bin/perl


$target = "- -";
open(INPUT, "<solar.txt");
my $file = 1;
# question 1
while (<INPUT>) {

	if (/$target/){
		print $file++;
		print ": $_ ";

	}
	}

close (INPUT);
print "================================\n";
# question 2 
open(INPUT, "<solar.txt");
my $file = 1;
while (<INPUT>) {
	
	#$word ="II";
	
	$sentence= $_ ;
	@roman=split(/ /, $sentence);
	@word=split(/ /, $sentence);
	#$word =s/word[1]/print this word/g;
	#print $roman[1];

	if (@word[1] eq $roman[1])
	{
		@word[1] = "-";
		print $file++;
		print ": @word";
	}
}
close (INPUT);
#Question 3
print "=================================\n";
open(INPUT, "<solar.txt");
my $file = 1;
while (<INPUT>) {


	$sentence= $_ ;
	@orbit=split(/ /, $sentence);
	@word=split(/ /, $sentence);

	if (@word[4] =~ /-\d+/){

		print $file++;
		print ": $_";
	}

}
close(INPUT);
print "=================================\n";

#question 4
open(INPUT, "<solar.txt");
my $file = 1;
while (<INPUT>) {

$sentence= $_;
$voyager="Voyager2";
@data=split(/ /, $sentence);


	if (@data[7] =~ /$voyager/){
		print $file++;
		print ": $_";

}
}
close (INPUT);
print "=================================\n";
open(INPUT, "<solar.txt");
my $file = 1;
while (<INPUT>) {

$sentence= $_;
$time=86400;# total seconds in a day
@data=split(/ /, $sentence);


	
foreach (@data [4]){
	print $file++;
	@data[4]=@data[4]*$time;
	print ": @data";

}

}
close (INPUT);