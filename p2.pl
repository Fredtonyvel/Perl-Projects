#/usr/local/bin/perl

open(INPUT, "<electricity.txt");
$file = 1;
# question 1


@d=qw(you are awesome);

print (sort @d\n);

while (<INPUT>) {

	$sentence= $_ ;
	@word=split(/ /, $sentence);
	

	$sentence =~ s/\W/ /gi;
	$sentence=~ s/\s+/ /g;
	
	@sentence = split(//,$sentence);


	
	#print $sentence;
	
	#print sort{ $a cmp $b } @sentence;

	


	}

close (INPUT);