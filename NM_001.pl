#!/usr/bin/perl -w
$proteinfilename='NM_001.pep';
unless(open(PROTEINFILE,$proteinfilename)){
print"could not open file $proteinfilename!\n";
exit;
}
while($protein=<PROTEINFILE>){
print"##### Here is the next line of the file:\n";
print$protein;
}
close PROTEINFILE;
exit;
