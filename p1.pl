#/usr/local/bin/perl

#Code from : GARY TSAI

print "question 1\n";

$target = "- -"; # looking for "- -" in the all the fields
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
print "question 2\n"; 
open(INPUT, "<solar.txt");
my $file = 1;
while (<INPUT>) {
	
	#$word ="II";
	
	$sentence= $_ ;
	@roman=split(/ /, $sentence);# split the all the fields in to individual array
	@word=split(/ /, $sentence);# same as above
	#$word =s/word[1]/print this word/g;
	#print $roman[1];

	if (@word[1] eq $roman[1])# compare with each other, which is the same
	{
		@word[1] = "-";# replace the second field with "-"
		print $file++;
		print ": @word";
	}
}
close (INPUT);
print "Question 3\n";
print "=================================\n";
open(INPUT, "<solar.txt");
my $file = 1;
while (<INPUT>) {


	$sentence= $_ ;
	
	@word=split(/ /, $sentence);# split the all the fields in to individual array

	if (@word[4] =~ /-\d+/){# use the matching function to bind with the 5th field

		print $file++;
		print ": $_";
	}

}
close(INPUT);
print "=================================\n";

print "question 4\n";
open(INPUT, "<solar.txt");
my $file = 1;
while (<INPUT>) {

$sentence= $_;
$voyager="Voyager2";# assigning a target to look for
@data=split(/ /, $sentence);# split the all the fields in to individual array


	if (@data[7] =~ /$voyager/){ #look for the target in the array 7th element, aka field 8.
		print $file++;
		print ": $_";

}
}
close (INPUT);
print "=================================\n";

print "Question 5\n";
open(INPUT, "<solar.txt");
my $file = 1;
while (<INPUT>) {

$sentence= $_;
$time=86400;# total seconds in a day
@data=split(/ /, $sentence);# split the all the fields in to individual array


	
foreach (@data [4]){
	print $file++;
	@data[4]=@data[4]*$time;#converting day in decimal to seconds
	print ": @data";

}

}
close (INPUT);