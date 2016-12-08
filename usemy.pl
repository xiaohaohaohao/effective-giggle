#!/usr/bin/perl -w
$dna='AAAAA';
$result=A_to_T($dna);
print "i changed all the A's in $dna to T's and got $result\n\n";
exit;
sub A_to_T{
my ($input)=@_;
$dna=$input;
$dna=~s/A/T/g;
return $dna;
}
