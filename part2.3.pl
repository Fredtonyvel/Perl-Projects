open(INPUT, "<electricity.txt");

my %count;# i had this line of code under while loop. Hence, it keeps give me trouble


while (my $sentence=<INPUT>) {

	process(\$sentence);# function to remove all non alpha numeric. 
	$sentence =~s/\W/ /gi; # this line is to remve all non alphanumeric
	
	my @sentence = split /\s+/,$sentence;

	foreach my $str (@sentence){
		$count{$str}++;
	}
	
	foreach my $str (sort {$count{$a}<=>$count{$b} }keys %count) {
   		printf "%-31s %s\n", $str, $count{$str};
}

}

sub process {# this function is to remove all "\n" (new line) character and long space
    my $sentence = shift;
    $sentence=~s/\n//g;
    $sentence=~s/\r//g;
    return $sentence;
}

close (INPUT);