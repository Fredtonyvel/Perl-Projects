#/usr/local/bin/perl


open(INPUT, "<electricity.txt");

while (<INPUT>)
{

s/[^a-zA-Z]/ /gi; # this line is to remve all non alphanumeric

@text = split(/ /, $_);

foreach (@text){
	@sorted =sort{lc ($a) cmp lc ($b)} @text;# both $a and $b are sorted lowercase
	
				
				}

}
print "@sorted\n"
close (INPUT);


