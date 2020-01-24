#!/usr/bin/perl
use strict;
use warnings;

my $user = getlogin || getpwuid($<) || "Kilroy";

open (my $fh, "<", "/home/$user/.bash_history") or die "trying";
my $lastline;
$lastline = $_ while <$fh>;
if (index($lastline, 'bash') != -1) {
  print "$lastline";
  exit;
}

print "HELLO WORLD";
