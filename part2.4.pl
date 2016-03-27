
open(INPUT, "<electricity.txt");


# 4: by frequency, with alphabetical order for words with the same frequency

my %count;# i had this line of code under while loop. Hence, it keeps give me trouble


while (my $sentence=<INPUT>) {
	chomp $sentence;# to remove all /n from tyext. However, i am unable to. 

	$sentence =~s/[^a-zA-Z]/ /gi; # this line is to remve all non alphabet
	
	
	my @sentence = split /\s+/,$sentence;


	foreach my $str (@sentence){
		$count{$str}++;
	}
	
							}

	foreach my $str (sort keys %count) {
   printf "%-31s %s\n", $str, $count{$str};
	}





close (INPUT);