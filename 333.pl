#!/usr/bin/perl -w
$DNA='AACTG';
print "here is the staring DNA:\n\n";
print "$DNA\n\n";
$RNA=$DNA;
$RNA=~ s/T/U/g;
print "here is the result of transcribing the DNA to RNA:\n\n";
print "$RNA\n";
exit
