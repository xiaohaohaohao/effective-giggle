#!/usr/bin/perl -w
$dna='CGACGTCTTCTCA';
$longer_dna=addACGT($dna);
print"i added ACGT to $dna and got $longer_dna\n\n";
exit;
sub addACGT{
my ($dna)=@_;
$dna .='ACGT';
return $dna;
}

