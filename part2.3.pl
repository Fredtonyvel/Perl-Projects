open(INPUT, "<electricity.txt");

# 3: by frequency, from high to low, (any order for equal frequency) 


my %count;# using hash to calaulate the frequency


while (my $sentence=<INPUT>) {

	chomp $sentence;# to remove all /n from tyext. However, i am unable to. 

	$sentence =~s/[^a-zA-Z]/ /g; # this line is to remve all non alphabet

	
	my @sentence = split /\s+/,$sentence;

	foreach my $str (@sentence){
		$count{$str}++;
	}
	
	}
	foreach my $str (sort {$count{$b}<=>$count{$a} }keys %count) {# reserve sorted to have the largest frequecy to be on top
   		printf "%-31s %s\n", $str, $count{$str};

		}





close (INPUT);