#/usr/local/bin/perl


print "Type in integer to return 'word' of the integer \n";

#chomp (my $number=<STDIN>);

open(INPUT, "<part3.txt");

while ($digit=<INPUT>)
{

@digit= split (//,$digit);
$digit = split (//, $digit);

#print $digit;
}

open(OUTPUT, ">part3out.txt");

my %num =(
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

my @k = keys %num;
my @v = values %num;

foreach my $str (@digit){
	$digit=~ s/\d+/ /g;

if (@digit[$str]== '1'){

		@digit[$str] = values %num;
		print @digit[str]; 
		
	}


}

print OUTPUT "$digit";
close(INPUT);
close(OUTPUT);