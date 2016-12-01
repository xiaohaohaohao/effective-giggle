#!/usr/bin/perl -w
print"please type the filename of the protein suqence data: ";
$proteinfilename=<STDIN>;
chomp $proteinfilename;
unless(open(PROTEINFILE,$proteinfilename)){
print"cannot open file \"$proteinfilename\"\n\n";
exit;
}
@protein=<PROTEINFILE>;
close PROTEINFILE;
$protein=join('',@protein);
$protein=~ s/\s//g;
do {
print"enter a motif to search for: ";
$motif=<STDIN>;
chomp $motif;
if($protein=~ /$motif/){
print"i find it!\n\n";
}
else{
print"i couldn\'t find it.\n\n";
}
}until($motif=~ /^\s*$/);
exit;
