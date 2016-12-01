#!/usr/bin/perl -w
print"please type the filename of the DNA sequence data: ";
$dna_filename=<STDIN>;
chomp $dna_filename;
unless(open(DNAFILE,$dna_filename)){
print"cannot open file \"$dna_filename\"\n\n";
exit;
}
@DNA=<DNAFILE>;
close DNAFILE;
$DNA=join('',@DNA);
$DNA=~ s/\s//g;
@DNA=split('',$DNA);
$count_a=0;
$count_c=0;
$count_g=0;
$count_t=0;
$errors=0;
for($position=0;$position<length $DNA; ++$position){
$base=substr($DNA,$position,1);
if($base eq 'a'){
++$count_a;
}
elsif($base eq 'c'){
++$count_c;
}
elsif($base eq 'g'){
++$count_g;
}
elsif($base eq 't'){
++$count_t;
}
else{
print"!!!!error-i don\'t recognize this base:$base\n";
++$errors;
}
}
print"A=$count_a\n";
print"C=$count_c\n";
print"T=$count_t\n";
print"G=$count_g\n";
print"errors=$errors\n";
exit;
