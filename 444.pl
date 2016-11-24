#!/usr/bin/perl -w
$DNA='ACTGCATTTGGGAAACCCAAA';
print "here is the starting DNA:\n\n";
print "$DNA\n\n";
$revcom=reverse $DNA;
$revcom=~ tr/ACGTacgt/TGCAtgca/;
print "here is the reverse complement DNA:\n\n";
print "$revcom\n";
exit;
