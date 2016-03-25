#/usr/local/bin/perl


print "Type in integer to return 'word' of the integer \n";#ask user for some numbers

chomp (my $number=<STDIN>);# reading in the numbers

open(INPUT, ">part3.txt");# open and write it out to a file
print INPUT "$number";
close(INPUT);# close it. 


open(OUTPUT, ">part3out.txt");# open and write out the word of the digits

my %num =(# using hash to identify digit and word
	0=>"Zero",
	1=>"One",
	2=>"Two",
	3=>"Three",
	4=>"Four",
	5=>"Five",
	6=>"Six",
	7=>"Seven",
	8=>"Eight",
	9=>"Nine");

open(INPUT, "<part3.txt"); # read in the data from user typed 

while (<INPUT>)# reading the INPUT file
{

@digit= split (//,$_); # spliting the data from the INPUT file into an array
$size=@digit; # determind the size of the array
	for ($i = 0 ; $i < $size; $i++){ # use For loop to re-assign  @digit to $ digit
		$digit = @digit[$i];# assigning
		#print $digit;

		foreach ($digit) {# since  $digit contains all the data from @digit, use it to print out from the hash
		#if ($digit eq $num{$digit}){
			print "$num{$digit} "; #printing the values of the hash
			print OUTPUT "$num{$digit} "# storing the values of the hash accoeding to the digit user typed
									}
								}



}
close(INPUT); # always close the file for good practice. 
close(OUTPUT);